import 'dart:math';

import 'package:window_meas/features/editor/data/model/line.dart';
import 'dart:ui';

extension LineExt on Line {
  bool isOverlapping(Line line) => _isCollinear(line) && _isCrossingIn1D(line);

  // check if both points of the specified segment are on the same line as the current segment
  // basically, all 4 points should be on the same line
  bool _isCollinear(Line line) =>
      (p2.dx - p1.dx) * (line.p1.dy - p1.dy) == (p2.dy - p1.dy) * (line.p1.dx - p1.dx) &&
      (p2.dx - p1.dx) * (line.p2.dy - p1.dy) == (p2.dy - p1.dy) * (line.p2.dx - p1.dx);

  // check if lines are crossing in 1D (by x coord)
  bool _isCrossingIn1D(Line line) => !((max(p1.dx, p2.dx) < min(line.p1.dx, line.p2.dx)) ||
      (max(line.p1.dx, line.p2.dx) < min(p1.dx, p2.dx)));

  Line mergeOverlapping(Line line) {
    Offset? min;
    Offset? max;

    for (final offset in [p1, p2, line.p1, line.p2]) {
      if (min == null || offset.dx < min.dx) {
        min = offset;
      }
      if (max == null || offset.dx > max.dx) {
        max = offset;
      }
    }

    if (min == max) {
      for (final offset in [p1, p2, line.p1, line.p2]) {
        if (min == null || offset.dy < min.dy) {
          min = offset;
        }
        if (max == null || offset.dy > max.dy) {
          max = offset;
        }
      }
    }

    return Line(min!, max!);
  }

  bool contains(Offset p) {
    double crossProduct = (p.dy - p1.dy) * (p2.dx - p1.dx) - (p.dx - p1.dx) * (p2.dy - p1.dy);
    if (crossProduct.abs() > 1e-10) {
      return false;
    }

    double dotProduct = (p.dx - p1.dx) * (p2.dx - p1.dx) + (p.dy - p1.dy) * (p2.dy - p1.dy);
    if (dotProduct < 0) {
      return false;
    }

    double squaredLengthBA = (p2.dx - p1.dx) * (p2.dx - p1.dx) + (p2.dy - p1.dy) * (p2.dy - p1.dy);
    if (dotProduct > squaredLengthBA) {
      return false;
    }

    return true;
  }
}
