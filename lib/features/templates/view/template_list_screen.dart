import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:window_meas/common/service_locator.dart';
import 'package:window_meas/common/view/colors.dart';
import 'package:window_meas/features/templates/cubit/template_list_cubit.dart';
import 'package:window_meas/features/templates/cubit/template_list_state.dart';
import 'package:window_meas/features/templates/view/template_list_item.dart';
import 'package:window_meas/l10n/localization.dart';

class TemplateListScreen extends StatelessWidget {
  const TemplateListScreen({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider<TemplateListCubit>(
        create: (context) => getIt()..watchTemplates(),
        child: const TemplateListView(),
      );
}

class TemplateListView extends StatefulWidget {
  const TemplateListView({super.key});

  @override
  State<TemplateListView> createState() => _TemplateListViewState();
}

class _TemplateListViewState extends State<TemplateListView> {
  int? selectedIndex;

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: Text(context.l10n.templates),
        actions: [
          if (selectedIndex != null)
            PopupMenuButton<String>(
              onSelected: (s) {
                if (s == context.l10n.delete) {
                  context.read<TemplateListCubit>().deleteTemplate(selectedIndex!);
                }
                selectedIndex = null;
              },
              icon: const FaIcon(FontAwesomeIcons.ellipsisVertical),
              itemBuilder: (BuildContext context) => [
                context.l10n.delete,
              ].map((e) => PopupMenuItem<String>(value: e, child: Text(e))).toList(),
            ),
        ],
      ),
      body: SafeArea(
        child: BlocBuilder<TemplateListCubit, TemplateListState>(
          builder: (context, state) => GridView.builder(
            padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 12),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
            ),
            itemCount: state.templates.length,
            itemBuilder: (context, index) => InkWell(
              onTap: () => setState(() => index == selectedIndex ? selectedIndex = null : selectedIndex = index),
              child: ColoredBox(
                color: selectedIndex == index ? AppColors.primary.withOpacity(0.5) : Colors.transparent,
                child: TemplateItem(state.templates[index]),
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _addTemplate(context),
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        child: const Icon(Icons.add),
      ));

  Future<void> _addTemplate(BuildContext context) async {
    context.push('/editor', extra: {'isTemplate': true});
  }
}
