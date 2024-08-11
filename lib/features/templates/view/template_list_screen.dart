import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:window_meas/common/service_locator.dart';
import 'package:window_meas/common/view/colors.dart';
import 'package:window_meas/features/editor/view/editor_screen.dart';
import 'package:window_meas/features/templates/cubit/template_list_cubit.dart';
import 'package:window_meas/features/templates/cubit/template_list_state.dart';
import 'package:window_meas/features/templates/view/template_grid.dart';
import 'package:window_meas/l10n/localization.dart';

enum TemplateListScreenMode {
  regular,
  select,
}

enum TemplateType {
  scheme,
  flexibles,
}

class TemplateListScreen extends StatelessWidget {
  const TemplateListScreen({
    required this.mode,
    required this.type,
    super.key,
  });

  final TemplateListScreenMode mode;
  final TemplateType type;

  @override
  Widget build(BuildContext context) => BlocProvider<TemplateListCubit>(
        create: (context) => getIt()..watchTemplates(type),
        child: TemplateListView(mode, type),
      );
}

class TemplateListView extends StatefulWidget {
  const TemplateListView(
    this.mode,
    this.type, {
    super.key,
  });

  final TemplateListScreenMode mode;
  final TemplateType type;

  @override
  State<TemplateListView> createState() => _TemplateListViewState();
}

class _TemplateListViewState extends State<TemplateListView> {
  int? selectedIndex;

  @override
  Widget build(BuildContext context) => BlocBuilder<TemplateListCubit, TemplateListState>(
        builder: (context, state) => Scaffold(
            appBar: AppBar(
              title: widget.type == TemplateType.scheme
                  ? Text(context.l10n.schemeTemplates)
                  : Text(context.l10n.flexiblesTemplates),
              actions: [
                if (selectedIndex != null)
                  PopupMenuButton<String>(
                    onSelected: (s) {
                      if (s == context.l10n.delete) {
                        context.read<TemplateListCubit>().deleteTemplate(selectedIndex!);
                      } else if (s == context.l10n.edit) {
                        context.push('/editor', extra: {
                          'mode': EditorScreenMode.createTemplate,
                          'scheme': null,
                          'template': state.templates[selectedIndex!],
                          'type': widget.type,
                        });
                      }
                      setState(() => selectedIndex = null);
                    },
                    icon: const FaIcon(FontAwesomeIcons.ellipsisVertical),
                    itemBuilder: (BuildContext context) => [
                      context.l10n.edit,
                      context.l10n.delete,
                    ].map((e) => PopupMenuItem<String>(value: e, child: Text(e))).toList(),
                  ),
              ],
            ),
            body: SafeArea(
              child: TemplateGridView(
                templates: state.templates,
                selectedIndex: selectedIndex,
                onSelected: (index) {
                  setState(
                      () => index == selectedIndex ? selectedIndex = null : selectedIndex = index);
                  if (widget.mode == TemplateListScreenMode.select) {
                    Navigator.pop(context, state.templates[index]);
                  }
                },
              ),
            ),
            floatingActionButton: (widget.mode != TemplateListScreenMode.select)
                ? FloatingActionButton(
                    onPressed: () => _addTemplate(context),
                    backgroundColor: AppColors.primary,
                    foregroundColor: Colors.white,
                    child: const Icon(Icons.add),
                  )
                : null),
      );

  Future<void> _addTemplate(BuildContext context) async => await context.push('/editor', extra: {
        'mode': EditorScreenMode.createTemplate,
        'scheme': null,
        'template': null,
        'type': widget.type,
      });
}
