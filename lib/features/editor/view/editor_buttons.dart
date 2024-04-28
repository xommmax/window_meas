import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:window_meas/features/editor/bloc/drawing_cubit.dart';
import 'package:window_meas/features/editor/bloc/editor_cubit.dart';

class ToolButtons extends StatelessWidget {
  const ToolButtons({super.key});

  @override
  Widget build(BuildContext context) => Align(
        alignment: Alignment.bottomLeft,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () => context.read<EditorCubit>().changeMode(EditorMode.draw),
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(16),
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
              ),
              child: const FaIcon(FontAwesomeIcons.pencil),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => context.read<EditorCubit>().changeMode(EditorMode.move),
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(16),
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
              ),
              child: const FaIcon(FontAwesomeIcons.hand),
            ),
          ],
        ),
      );
}

class UndoRedoButtons extends StatelessWidget {
  const UndoRedoButtons({super.key});

  @override
  Widget build(BuildContext context) => Align(
        alignment: Alignment.bottomRight,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () => context.read<DrawingCubit>().undo(),
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(16),
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
              ),
              child: const FaIcon(FontAwesomeIcons.arrowRotateLeft),
            ),
            const SizedBox(width: 20),
            ElevatedButton(
              onPressed: () => context.read<DrawingCubit>().redo(),
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(16),
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
              ),
              child: const FaIcon(FontAwesomeIcons.arrowRotateRight),
            ),
          ],
        ),
      );
}
