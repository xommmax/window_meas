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
  Widget selectedModeIcon = const FaIcon(FontAwesomeIcons.pencil);

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
                _modeButton(EditorMode.eraser),
                _modeButton(EditorMode.arch),
                _modeButton(EditorMode.fillingType),
                _modeButton(EditorMode.openingType),
                _modeButton(EditorMode.move),
                _modeButton(EditorMode.draw),
                const SizedBox(height: 56),
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
                    icon: const FaIcon(FontAwesomeIcons.arrowRotateLeft),
                  ),
                  const SizedBox(width: 8),
                  _Button(
                    onPressed: () => context.read<DrawingCubit>().redo(),
                    icon: const FaIcon(FontAwesomeIcons.arrowRotateRight),
                  ),
                ],
              ),
            ],
          ),
        ),
      );

  Widget _modeButton(EditorMode mode) {
    final icon = switch (mode) {
      EditorMode.arch => Image.asset('assets/ic_editor_arc.png', width: 24),
      EditorMode.fillingType => Image.asset('assets/ic_editor_fill_type.png', width: 24),
      EditorMode.openingType => Image.asset('assets/ic_editor_open_type.png', width: 24),
      EditorMode.move => const FaIcon(FontAwesomeIcons.hand),
      EditorMode.draw => const FaIcon(FontAwesomeIcons.pencil),
      EditorMode.eraser => const FaIcon(FontAwesomeIcons.eraser),
    };

    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: _Button(
          onPressed: () {
            if (isExpanded) context.read<EditorCubit>().changeMode(mode);
            setState(() {
              selectedModeIcon = icon;
              isExpanded = !isExpanded;
            });
          },
          icon: icon),
    );
  }
}

class _Button extends StatelessWidget {
  const _Button({
    required this.onPressed,
    required this.icon,
  });

  final VoidCallback onPressed;
  final Widget icon;

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
      icon: icon,
      iconSize: 20,
    );
  }
}
