import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:window_meas/features/editor/bloc/drawing_cubit.dart';
import 'package:window_meas/features/editor/bloc/editor_cubit.dart';

class EditorButtons extends StatelessWidget {
  const EditorButtons({super.key});

  @override
  Widget build(BuildContext context) => Align(
        alignment: Alignment.bottomLeft,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _Button(
                onPressed: () => context.read<EditorCubit>().changeMode(EditorMode.fillingType),
                icon: FontAwesomeIcons.solidSquare,
              ),
              _Button(
                onPressed: () => context.read<EditorCubit>().changeMode(EditorMode.openingType),
                icon: FontAwesomeIcons.rectangleXmark,
              ),
              const SizedBox(height: 8),
              _Button(
                onPressed: () => context.read<EditorCubit>().changeMode(EditorMode.draw),
                icon: FontAwesomeIcons.pencil,
              ),
              const SizedBox(height: 8),
              _Button(
                onPressed: () => context.read<EditorCubit>().changeMode(EditorMode.move),
                icon: FontAwesomeIcons.hand,
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _Button(
                    onPressed: () => context.read<DrawingCubit>().undo(),
                    icon: FontAwesomeIcons.arrowRotateLeft,
                  ),
                  const SizedBox(width: 8),
                  _Button(
                    onPressed: () => context.read<DrawingCubit>().redo(),
                    icon: FontAwesomeIcons.arrowRotateRight,
                  ),
                ],
              ),
            ],
          ),
        ),
      );
}

class _Button extends StatelessWidget {
  const _Button({
    required this.onPressed,
    required this.icon,
  });

  final VoidCallback onPressed;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      style: IconButton.styleFrom(
        shape: const CircleBorder(),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 3,
        shadowColor: Colors.black,
      ),
      icon: FaIcon(icon, size: 20),
    );
  }
}
