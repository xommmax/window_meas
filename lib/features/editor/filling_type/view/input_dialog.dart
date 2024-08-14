import 'package:flutter/material.dart';
import 'package:window_meas/l10n/localization.dart';

class InputDialog extends StatefulWidget {
  const InputDialog({
    super.key,
  });

  static Future<String?> show(
    BuildContext context,
  ) =>
      showDialog<String>(
        context: context,
        builder: (context) => const InputDialog(),
      );

  @override
  State<InputDialog> createState() => _InputDialogState();
}

class _InputDialogState extends State<InputDialog> {
  late final TextEditingController textController;

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) => AlertDialog(
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: textController,
              decoration: InputDecoration(
                labelText: context.l10n.number,
              ),
            ),
          ],
        ),
        actions: [
          ElevatedButton(
            child: Text(context.l10n.cancel),
            onPressed: () => Navigator.pop(context),
          ),
          ElevatedButton(
            child: Text(context.l10n.save),
            onPressed: () => Navigator.pop(context, textController.text),
          ),
        ],
      );

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }
}
