import 'dart:ui';

import 'package:window_meas/common/constants.dart';

extension OffsetExt on Offset {
  Offset toInnerCoord(Size size) {
    final gridSize = size.width / Constants.gridSpacing;

    final shiftX = (size.width / 2.0 / gridSize).roundToDouble() * gridSize;
    final shiftY = (size.height / 2.0 / gridSize).roundToDouble() * gridSize;

    final x = ((dx - shiftX) / gridSize).roundToDouble();
    final y = ((dy - shiftY) / gridSize).roundToDouble();

    return Offset(x, y);
  }

  Offset toGlobalCoord(Size size) {
    final gridSize = size.width / Constants.gridSpacing;

    final shiftX = (size.width / 2.0 / gridSize).roundToDouble() * gridSize;
    final shiftY = (size.height / 2.0 / gridSize).roundToDouble() * gridSize;

    final x = dx * gridSize + shiftX;
    final y = dy * gridSize + shiftY;

    return Offset(x, y);
  }
}
