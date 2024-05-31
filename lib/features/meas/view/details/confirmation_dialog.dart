import 'package:flutter/material.dart';
import 'package:window_meas/l10n/localization.dart';

class ConfirmationDialog extends StatelessWidget {
  const ConfirmationDialog(
    this.title,
    this.desc, {
    super.key,
  });

  final String title;
  final String desc;

  static Future<bool> show(
    BuildContext context,
    String title,
    String desc,
  ) async =>
      (await showDialog<bool>(
        context: context,
        builder: (context) => ConfirmationDialog(title, desc),
      )) ??
      false;

  @override
  Widget build(BuildContext context) => AlertDialog(
        title: Text(title),
        content: Text(desc),
        actions: [
          ElevatedButton(
            child: Text(context.l10n.no),
            onPressed: () => Navigator.pop(context, false),
          ),
          ElevatedButton(
            child: Text(context.l10n.yes),
            onPressed: () => Navigator.pop(context, true),
          ),
        ],
      );
}
