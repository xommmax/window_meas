import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:window_meas/common/service_locator.dart';
import 'package:window_meas/features/editor/bloc/drawing_cubit.dart';
import 'package:window_meas/features/editor/bloc/editor_cubit.dart';
import 'package:window_meas/features/editor/view/drawing_view.dart';
import 'package:window_meas/features/editor/view/editor_buttons.dart';
import 'package:window_meas/l10n/localization.dart';

class EditorScreen extends StatelessWidget {
  const EditorScreen({
    bool? isTemplate,
    super.key,
  }) : _isTemplate = isTemplate ?? false;

  final bool _isTemplate;

  @override
  Widget build(BuildContext context) => MultiBlocProvider(
        providers: [
          BlocProvider<EditorCubit>(create: (ctx) => getIt()),
          BlocProvider<DrawingCubit>(create: (ctx) => getIt()),
        ],
        child: EditorView(_isTemplate),
      );
}

class EditorView extends StatelessWidget {
  const EditorView(this._isTemplate, {super.key});

  final bool _isTemplate;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          leading: BackButton(onPressed: () => Navigator.pop(context, context.read<DrawingCubit>().state.scheme)),
          title: Text(context.l10n.editor),
          actions: [
            if (_isTemplate)
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
      );
}
