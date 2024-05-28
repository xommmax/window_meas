import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:window_meas/common/service_locator.dart';
import 'package:window_meas/features/editor/bloc/drawing_cubit.dart';
import 'package:window_meas/features/editor/bloc/editor_cubit.dart';
import 'package:window_meas/features/editor/view/drawing_view.dart';
import 'package:window_meas/features/editor/view/editor_buttons.dart';
import 'package:window_meas/features/editor/data/model/scheme.dart';
import 'package:window_meas/l10n/localization.dart';

enum EditorScreenMode {
  regular,
  createTemplate,
}

class EditorScreen extends StatelessWidget {
  const EditorScreen({
    this.mode,
    this.scheme,
    super.key,
  });

  final EditorScreenMode? mode;
  final Scheme? scheme;

  @override
  Widget build(BuildContext context) => MultiBlocProvider(
        providers: [
          BlocProvider<EditorCubit>(
            create: (ctx) => getIt(),
          ),
          BlocProvider<DrawingCubit>(
            create: (ctx) => getIt()..setScheme(scheme),
          ),
        ],
        child: EditorView(mode ?? EditorScreenMode.regular),
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
            final scheme = context.read<DrawingCubit>().state.scheme;
            Navigator.pop(context, scheme.isEmpty ? null : scheme);
          }
        },
        child: Scaffold(
          appBar: AppBar(
            leading: BackButton(onPressed: () {
              final scheme = context.read<DrawingCubit>().state.scheme;
              Navigator.pop(context, scheme.isEmpty ? null : scheme);
            }),
            title: Text(context.l10n.editor),
            actions: [
              if (editorScreenMode == EditorScreenMode.createTemplate)
                IconButton(
                  icon: const FaIcon(FontAwesomeIcons.floppyDisk),
                  onPressed: () async {
                    await context.read<EditorCubit>().saveTemplate(context.read<DrawingCubit>().state.scheme);
                    if (context.mounted) {
                      Navigator.pop(context);
                    }
                  },
                ),
            ],
          ),
          body: const SafeArea(
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Stack(
                children: [
                  DrawingView(),
                  ToolButtons(),
                  UndoRedoButtons(),
                ],
              ),
            ),
          ),
        ),
      );
}
