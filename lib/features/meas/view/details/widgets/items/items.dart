import 'package:flutter/material.dart';
import 'package:window_meas/features/meas/data/params/param_enum.dart';

class TextItem extends StatelessWidget {
  const TextItem({
    required this.title,
    super.key,
  });

  final String title;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          '$title: ',
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
      );
}

class InputItem extends StatefulWidget {
  const InputItem({
    required this.title,
    required this.value,
    this.onChanged,
    super.key,
  });

  final String title;
  final String? value;
  final Function(String)? onChanged;

  @override
  State<InputItem> createState() => _InputItemState();
}

class _InputItemState extends State<InputItem> {
  late final TextEditingController controller;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController(text: widget.value);
    controller.addListener(() => widget.onChanged?.call(controller.text));
  }

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Text(
              '${widget.title}: ',
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
            const SizedBox(width: 4),
            Expanded(
              child: TextField(
                controller: controller,
                decoration: null,
                textCapitalization: TextCapitalization.words,
              ),
            ),
          ],
        ),
      );

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }
}

class SwitchItem extends StatelessWidget {
  const SwitchItem({
    required this.title,
    required this.value,
    this.onChanged,
    super.key,
  });

  final String title;
  final bool value;
  final Function(bool)? onChanged;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '$title: ',
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
            Switch(value: value, onChanged: onChanged),
          ],
        ),
      );
}

class DropdownItem<T extends ParamEnum> extends StatelessWidget {
  const DropdownItem({
    required this.title,
    required this.values,
    required this.initialValue,
    this.onSelected,
    super.key,
  });

  final String title;
  final List<T> values;
  final T initialValue;
  final Function(T)? onSelected;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: [
            Text(
              '$title: ',
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
            const SizedBox(width: 4),
            DropdownMenu(
              initialSelection: initialValue,
              dropdownMenuEntries: values.map((e) => DropdownMenuEntry<T>(value: e, label: e.localizedName)).toList(),
              onSelected: (e) {
                if (e != null) onSelected?.call(e);
              },
              inputDecorationTheme: const InputDecorationTheme(
                border: InputBorder.none,
              ),
            ),
          ],
        ),
      );
}
