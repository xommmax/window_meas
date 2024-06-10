import 'package:flutter/material.dart';
import 'package:window_meas/common/view/colors.dart';
import 'package:window_meas/features/editor/filling_type/data/filling_type_enum.dart';
import 'package:window_meas/features/editor/filling_type/view/filling_type_painter.dart';

class FillingTypeItem extends StatelessWidget {
  const FillingTypeItem(
    this.fillingType, {
    required this.isSelected,
    super.key,
  });

  final FillingType fillingType;
  final bool isSelected;

  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.primary.withOpacity(0.5), width: 0.5),
          color:
              isSelected ? AppColors.primary.withOpacity(0.4) : AppColors.primary.withOpacity(0.1),
        ),
        padding: const EdgeInsets.only(bottom: 6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: SizedBox.expand(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: CustomPaint(
                    painter: FillingTypePainter(fillingType),
                  ),
                ),
              ),
            ),
            Text(
              fillingType.localizedName,
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontSize: 10),
            ),
          ],
        ),
      );
}
