import 'dart:ui';

import 'package:window_meas/common/constants.dart';

Offset toInnerCoord(Offset offset, Size size) {
  final gridSize = size.width / Constants.gridSpacing;

  final shiftX = (size.width / 2.0 / gridSize).roundToDouble() * gridSize;
  final shiftY = (size.height / 2.0 / gridSize).roundToDouble() * gridSize;

  final x = ((offset.dx - shiftX) / gridSize).roundToDouble();
  final y = ((offset.dy - shiftY) / gridSize).roundToDouble();

  return Offset(x, y);
}

Offset toGlobalCoord(Offset offset, Size size) {
  final gridSize = size.width / Constants.gridSpacing;

  final shiftX = (size.width / 2.0 / gridSize).roundToDouble() * gridSize;
  final shiftY = (size.height / 2.0 / gridSize).roundToDouble() * gridSize;

  final x = offset.dx * gridSize + shiftX;
  final y = offset.dy * gridSize + shiftY;

  return Offset(x, y);
}
