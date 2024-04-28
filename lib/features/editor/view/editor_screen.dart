import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:window_meas/common/service_locator.dart';
import 'package:window_meas/features/editor/bloc/drawing_cubit.dart';
import 'package:window_meas/features/editor/bloc/editor_cubit.dart';
import 'package:window_meas/features/editor/view/drawing_view.dart';
import 'package:window_meas/features/editor/view/editor_buttons.dart';

class EditorScreen extends StatelessWidget {
  const EditorScreen({super.key});

  @override
  Widget build(BuildContext context) => MultiBlocProvider(
        providers: [
          BlocProvider<EditorCubit>(create: (ctx) => getIt()),
          BlocProvider<DrawingCubit>(create: (ctx) => getIt()),
        ],
        child: const EditorView(),
      );
}

class EditorView extends StatelessWidget {
  const EditorView({super.key});

  @override
  Widget build(BuildContext context) => const Scaffold(
        body: SafeArea(
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
