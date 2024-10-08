import 'dart:math';
import 'dart:ui';

import 'package:window_meas/common/constants.dart';

extension OffsetExt on Offset {
  Offset toInnerCoord(Size size) {
    final gridSize = size.width / Constants.gridAmount;

    final shiftX = (size.width / 2.0 / gridSize).roundToDouble() * gridSize;
    final shiftY = (size.height / 2.0 / gridSize).roundToDouble() * gridSize;

    double x = ((dx - shiftX) / gridSize).roundToDouble();
    if (x == -0.0) x = 0.0;
    double y = ((dy - shiftY) / gridSize).roundToDouble();
    if (y == -0.0) y = 0.0;

    return Offset(x, y);
  }

  Offset toGlobalCoord(Size size) {
    final gridSize = size.width / Constants.gridAmount;

    final shiftX = (size.width / 2.0 / gridSize).roundToDouble() * gridSize;
    final shiftY = (size.height / 2.0 / gridSize).roundToDouble() * gridSize;

    final x = dx * gridSize + shiftX;
    final y = dy * gridSize + shiftY;

    return Offset(x, y);
  }

  Offset toTemplateCoord(Size size, int gridAmount, int minX, int minY) {
    final gridSize = size.width / gridAmount;

    final shiftX = -minX * gridSize;
    final shiftY = -minY * gridSize;

    final x = dx * gridSize + shiftX;
    final y = dy * gridSize + shiftY;

    return Offset(x, y);
  }

  double distanceBetween(Offset p2) => sqrt(pow(dx - p2.dx, 2) + pow(dy - p2.dy, 2));
}
