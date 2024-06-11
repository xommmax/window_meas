import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:window_meas/features/editor/bloc/drawing_cubit.dart';
import 'package:window_meas/features/editor/bloc/editor_cubit.dart';

class EditorButtons extends StatefulWidget {
  const EditorButtons({super.key});

  @override
  State<EditorButtons> createState() => _EditorButtonsState();
}

class _EditorButtonsState extends State<EditorButtons> {
  bool isExpanded = false;
  IconData selectedModeIcon = FontAwesomeIcons.pencil;

  @override
  Widget build(BuildContext context) => Align(
        alignment: Alignment.bottomLeft,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (isExpanded) ...[
                _modeButton(EditorMode.arch),
                _modeButton(EditorMode.fillingType),
                _modeButton(EditorMode.openingType),
                _modeButton(EditorMode.move),
                _modeButton(EditorMode.draw),
              ],
              if (!isExpanded)
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: _Button(
                    onPressed: () => setState(() => isExpanded = true),
                    icon: selectedModeIcon,
                  ),
                ),
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

  Widget _modeButton(EditorMode mode) => Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: _Button(
            onPressed: () {
              if (isExpanded) context.read<EditorCubit>().changeMode(mode);
              setState(() {
                selectedModeIcon = icons[mode]!;
                isExpanded = !isExpanded;
              });
            },
            icon: icons[mode]!),
      );

  static const icons = {
    EditorMode.arch: FontAwesomeIcons.archway,
    EditorMode.fillingType: FontAwesomeIcons.solidSquare,
    EditorMode.openingType: FontAwesomeIcons.rectangleXmark,
    EditorMode.move: FontAwesomeIcons.hand,
    EditorMode.draw: FontAwesomeIcons.pencil,
  };
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
