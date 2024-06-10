import 'package:flutter/material.dart';
import 'package:window_meas/features/editor/opening_type/data/opening_type_enum.dart';
import 'package:window_meas/features/editor/opening_type/view/opening_type_item.dart';

class OpeningTypeGridView extends StatelessWidget {
  const OpeningTypeGridView({
    required this.onSelected,
    required this.selectedOpeningType,
    super.key,
  });

  final Function(OpeningType) onSelected;
  final OpeningType? selectedOpeningType;

  @override
  Widget build(BuildContext context) => GridView.builder(
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 12),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: 0.7,
        ),
        itemCount: OpeningType.values.length,
        itemBuilder: (context, index) => InkWell(
          onTap: () => onSelected(OpeningType.values[index]),
          child: OpeningTypeItem(
            OpeningType.values[index],
            isSelected: OpeningType.values[index] == selectedOpeningType,
          ),
        ),
      );
}
