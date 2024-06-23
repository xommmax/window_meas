import 'package:flutter/material.dart';

class WorkaroundForExpandIcon extends StatelessWidget {
  const WorkaroundForExpandIcon({super.key, required this.child});

  final Widget child;
  static const iconColor = Colors.white;

  @override
  Widget build(BuildContext context) => Theme(
        data: Theme.of(context).copyWith(
          iconButtonTheme: const IconButtonThemeData(
            style: ButtonStyle(foregroundColor: WidgetStatePropertyAll(iconColor)),
          ),
        ),
        child: child,
      );
}
