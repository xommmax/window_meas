import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:window_meas/common/constants.dart';
import 'package:window_meas/common/ext/offset_ext.dart';
import 'package:window_meas/features/editor/view/components.dart';
import 'package:window_meas/features/editor/view/meas_clicked_event.dart';

MeasurementTapEvent? onTapUp(TapUpDetails details, List<Line> lines, Size size) {
  final gridSize = size.width / Constants.gridAmount;
  final position = details.localPosition;

  final xNodes = SplayTreeSet();
  final yNodes = SplayTreeSet();
  for (final line in lines) {
    if (line.$1 != null && line.$2 != null) {
      final p1 = line.$1!.toGlobalCoord(size);
      final p2 = line.$2!.toGlobalCoord(size);
      xNodes.addAll([p1.dx, p2.dx]);
      yNodes.addAll([p1.dy, p2.dy]);
    }
  }

  if (xNodes.isEmpty || yNodes.isEmpty) return null;

  final horMainPath = Path()
    ..moveTo(xNodes.first, yNodes.first - 2.25 * gridSize)
    ..lineTo(xNodes.first, yNodes.first - 1.25 * gridSize)
    ..lineTo(xNodes.last, yNodes.first - 1.25 * gridSize)
    ..lineTo(xNodes.last, yNodes.first - 2.25 * gridSize)
    ..lineTo(xNodes.first, yNodes.first - 2.25 * gridSize);

  if (horMainPath.contains(position)) {
    return MeasurementTapEvent(direction: MeasurementDirection.horizontal, isMain: true, index: -1);
  }

  for (int i = 1; i < xNodes.length; i++) {
    final horSubPaths = Path()
      ..moveTo(xNodes.elementAt(i - 1), yNodes.first - 1.25 * gridSize)
      ..lineTo(xNodes.elementAt(i - 1), yNodes.first - 0.25 * gridSize)
      ..lineTo(xNodes.elementAt(i), yNodes.first - 0.25 * gridSize)
      ..lineTo(xNodes.elementAt(i), yNodes.first - 1.25 * gridSize)
      ..lineTo(xNodes.elementAt(i - 1), yNodes.first - 1.25 * gridSize);

    if (horSubPaths.contains(position)) {
      return MeasurementTapEvent(direction: MeasurementDirection.horizontal, isMain: false, index: i - 1);
    }
  }

  final verMainPath = Path()
    ..moveTo(xNodes.first - 2.25 * gridSize, yNodes.first)
    ..lineTo(xNodes.first - 1.25 * gridSize, yNodes.first)
    ..lineTo(xNodes.first - 1.25 * gridSize, yNodes.last)
    ..lineTo(xNodes.first - 2.25 * gridSize, yNodes.last)
    ..lineTo(xNodes.first - 2.25 * gridSize, yNodes.first);

  if (verMainPath.contains(position)) {
    return MeasurementTapEvent(direction: MeasurementDirection.vertical, isMain: true, index: -1);
  }

  for (int i = 1; i < yNodes.length; i++) {
    final verSubPath = Path()
      ..moveTo(xNodes.first - 1.25 * gridSize, yNodes.elementAt(i - 1))
      ..lineTo(xNodes.first - 0.25 * gridSize, yNodes.elementAt(i - 1))
      ..lineTo(xNodes.first - 0.25 * gridSize, yNodes.elementAt(i))
      ..lineTo(xNodes.first - 1.25 * gridSize, yNodes.elementAt(i))
      ..lineTo(xNodes.first - 1.25 * gridSize, yNodes.elementAt(i - 1));

    if (verSubPath.contains(position)) {
      return MeasurementTapEvent(direction: MeasurementDirection.vertical, isMain: false, index: i - 1);
    }
  }

  return null;
}
