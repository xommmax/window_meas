import 'package:flutter/material.dart';
import 'package:window_meas/common/view/colors.dart';
import 'package:window_meas/features/editor/opening_type/data/opening_type_enum.dart';
import 'package:window_meas/features/editor/opening_type/view/opening_type_painter.dart';

class OpeningTypeItem extends StatelessWidget {
  const OpeningTypeItem(
    this.openingType, {
    super.key,
  });

  final OpeningType openingType;

  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.primary.withOpacity(0.5), width: 0.5),
          color: AppColors.primary.withOpacity(0.1),
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
                    painter: OpeningTypePainter(openingType),
                  ),
                ),
              ),
            ),
            Text(
              openingType.localizedName,
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 10,
              )
            ),
          ],
        ),
      );
}
