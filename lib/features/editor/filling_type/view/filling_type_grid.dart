import 'package:flutter/material.dart';
import 'package:window_meas/features/editor/filling_type/data/filling_type_enum.dart';
import 'package:window_meas/features/editor/filling_type/view/filling_type_item.dart';

class FillingTypeGridView extends StatelessWidget {
  const FillingTypeGridView({
    required this.onSelected,
    required this.selectedFillingType,
    super.key,
  });

  final Function(FillingType) onSelected;
  final FillingType? selectedFillingType;

  @override
  Widget build(BuildContext context) => GridView.builder(
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 12),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: 0.7,
        ),
        itemCount: FillingType.values.length,
        itemBuilder: (context, index) => InkWell(
          onTap: () => onSelected(FillingType.values[index]),
          child: FillingTypeItem(
            FillingType.values[index],
            isSelected: FillingType.values[index] == selectedFillingType,
          ),
        ),
      );
}
