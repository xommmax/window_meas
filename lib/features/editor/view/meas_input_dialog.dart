import 'package:flutter/material.dart';
import 'package:window_meas/l10n/localization.dart';

class MeasurementInputDialog extends StatefulWidget {
  const MeasurementInputDialog({
    super.key,
  });

  static Future<String?> show(BuildContext context) => showDialog<String>(
        context: context,
        builder: (context) => const MeasurementInputDialog(),
      );

  @override
  State<MeasurementInputDialog> createState() => _MeasurementInputDialogState();
}

class _MeasurementInputDialogState extends State<MeasurementInputDialog> {
  late final TextEditingController _textController;

  @override
  void initState() {
    super.initState();
    _textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) => AlertDialog(
        title: Text(context.l10n.size),
        content: TextField(
          controller: _textController,
          decoration: InputDecoration(hintText: context.l10n.enterValue),
          keyboardType: TextInputType.number,
        ),
        actions: <Widget>[
          ElevatedButton(
            child: Text(context.l10n.cancel),
            onPressed: () => Navigator.pop(context),
          ),
          ElevatedButton(
            child: Text(context.l10n.save),
            onPressed: () => Navigator.pop(context, _textController.text),
          ),
        ],
      );

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }
}
