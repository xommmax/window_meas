import 'dart:math';

import 'package:window_meas/features/editor/view/components.dart';
import 'dart:ui';

extension LineExt on Line {
  bool isOverlapping(Line line) => _isCollinear(line) && _isCrossingIn1D(line);

  // check if both points of the specified segment are on the same line as the current segment
  // basically, all 4 points should be on the same line
  bool _isCollinear(Line line) =>
      ($2!.dx - $1!.dx) * (line.$1!.dy - $1!.dy) == ($2!.dy - $1!.dy) * (line.$1!.dx - $1!.dx) &&
      ($2!.dx - $1!.dx) * (line.$2!.dy - $1!.dy) == ($2!.dy - $1!.dy) * (line.$2!.dx - $1!.dx);

  // check if lines are crossing in 1D (by x coord)
  bool _isCrossingIn1D(Line line) =>
      !((max($1!.dx, $2!.dx) < min(line.$1!.dx, line.$2!.dx)) || (max(line.$1!.dx, line.$2!.dx) < min($1!.dx, $2!.dx)));

  Line mergeOverlapping(Line line) {
    Offset? min;
    Offset? max;

    for (final offset in [$1, $2, line.$1, line.$2]) {
      if (min == null || offset!.dx < min.dx) {
        min = offset;
      }
      if (max == null || offset!.dx > max.dx) {
        max = offset;
      }
    }

    if (min == max) {
      for (final offset in [$1, $2, line.$1, line.$2]) {
        if (min == null || offset!.dy < min.dy) {
          min = offset;
        }
        if (max == null || offset!.dy > max.dy) {
          max = offset;
        }
      }
    }

    return (min, max);
  }
}
