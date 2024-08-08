import 'package:flutter/material.dart';

class FillingTypeCheckboxOption extends StatelessWidget {
  const FillingTypeCheckboxOption({
    required this.text,
    required this.value,
    required this.onChanged,
    super.key,
  });

  final String text;
  final bool value;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) => Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(text),
          Checkbox(
            value: value,
            onChanged: (value) => onChanged(value!),
          ),
        ],
      );
}
