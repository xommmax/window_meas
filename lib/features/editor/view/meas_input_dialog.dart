import 'package:flutter/material.dart';
import 'package:window_meas/features/editor/data/model/segment.dart';
import 'package:window_meas/l10n/localization.dart';

class MeasurementInputDialog extends StatefulWidget {
  const MeasurementInputDialog({
    required this.segment,
    super.key,
  });

  final SizeSegment segment;

  static Future<(String, String)?> show(
    BuildContext context,
    SizeSegment segment,
  ) =>
      showDialog<(String, String)>(
        context: context,
        builder: (context) => MeasurementInputDialog(segment: segment),
      );

  @override
  State<MeasurementInputDialog> createState() => _MeasurementInputDialogState();
}

class _MeasurementInputDialogState extends State<MeasurementInputDialog> {
  late final TextEditingController _sizeTextController;
  late final TextEditingController _commentTextController;

  @override
  void initState() {
    super.initState();
    _sizeTextController = TextEditingController(text: widget.segment.size);
    _commentTextController = TextEditingController(text: widget.segment.comment);
  }

  @override
  Widget build(BuildContext context) => AlertDialog(
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: _sizeTextController,
              decoration: InputDecoration(
                labelText: context.l10n.size,
                labelStyle: const TextStyle(fontSize: 20),
              ),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: _commentTextController,
              decoration: InputDecoration(
                labelText: context.l10n.comment,
                labelStyle: const TextStyle(fontSize: 20),
              ),
              keyboardType: TextInputType.multiline,
              maxLines: 2,
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
            onPressed: () => Navigator.pop(
              context,
              (_sizeTextController.text, _commentTextController.text),
            ),
          ),
        ],
      );

  @override
  void dispose() {
    _sizeTextController.dispose();
    _commentTextController.dispose();
    super.dispose();
  }
}
