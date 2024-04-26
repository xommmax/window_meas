import 'dart:ui';

import 'package:window_meas/common/constants.dart';

Offset toInnerCoord(Offset offset, Size size) {
  final gridSize = size.width / Constants.gridSpacing;

  final x = ((offset.dx - size.width / 2.0) / gridSize).roundToDouble();
  final y = ((offset.dy - size.height / 2.0) / gridSize).roundToDouble();

  return Offset(x, y);
}

Offset toGlobalCoord(Offset offset, Size size) {
  final gridSize = size.width / Constants.gridSpacing;

  final x = offset.dx * gridSize + (size.width / 2.0 / gridSize).roundToDouble() * gridSize;
  final y = offset.dy * gridSize + (size.height / 2.0 / gridSize).roundToDouble() * gridSize;

  return Offset(x, y);
}
