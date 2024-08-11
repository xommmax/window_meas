import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:window_meas/common/service_locator.dart';
import 'package:window_meas/features/editor/bloc/drawing_cubit.dart';
import 'package:window_meas/features/editor/bloc/editor_cubit.dart';
import 'package:window_meas/features/editor/view/drawing_view.dart';
import 'package:window_meas/features/editor/view/editor_buttons.dart';
import 'package:window_meas/features/editor/data/model/scheme.dart';
import 'package:window_meas/features/measurement/view/details/confirmation_dialog.dart';
import 'package:window_meas/features/templates/data/model/template.dart';
import 'package:window_meas/features/templates/view/template_list_screen.dart';
import 'package:window_meas/l10n/localization.dart';

enum EditorScreenMode {
  regular,
  createTemplate,
}

class EditorScreen extends StatelessWidget {
  const EditorScreen({
    required this.mode,
    required this.templateType,
    this.scheme,
    this.template,
    super.key,
  });

  final EditorScreenMode mode;
  final Scheme? scheme;
  final Template? template;
  final TemplateType templateType;

  @override
  Widget build(BuildContext context) => MultiBlocProvider(
        providers: [
          BlocProvider<EditorCubit>(
            create: (ctx) => getIt()..setData(template, templateType),
          ),
          BlocProvider<DrawingCubit>(
            create: (ctx) => getIt()..setScheme(template?.scheme ?? scheme),
          ),
        ],
        child: EditorView(mode),
      );
}

class EditorView extends StatelessWidget {
  const EditorView(this.editorScreenMode, {super.key});

  final EditorScreenMode editorScreenMode;

  @override
  Widget build(BuildContext context) => PopScope(
        canPop: false,
        onPopInvoked: (didPop) {
          if (!didPop) {
            onQuit(context);
          }
        },
        child: Scaffold(
          appBar: AppBar(
            leading: BackButton(onPressed: () => onQuit(context)),
            title: Text(context.l10n.editor),
            actions: [
              if (editorScreenMode == EditorScreenMode.createTemplate)
                IconButton(
                  icon: const FaIcon(FontAwesomeIcons.floppyDisk),
                  onPressed: () async {
                    await context
                        .read<EditorCubit>()
                        .saveTemplate(context.read<DrawingCubit>().state.scheme);
                    if (context.mounted) {
                      Navigator.pop(context);
                    }
                  },
                ),
            ],
          ),
          body: const SafeArea(
            child: Stack(
              children: [
                DrawingView(),
                EditorButtons(),
              ],
            ),
          ),
        ),
      );

  Future<void> onQuit(BuildContext context) async {
    if (editorScreenMode == EditorScreenMode.createTemplate) {
      final shouldQuit = await ConfirmationDialog.show(
        context,
        context.l10n.quit,
        context.l10n.quitDesc,
      );
      if (shouldQuit && context.mounted) {
        Navigator.pop(context);
      }
    } else {
      final scheme = context.read<DrawingCubit>().state.scheme;
      Navigator.pop(context, scheme.isEmpty ? null : scheme);
    }
  }
}
