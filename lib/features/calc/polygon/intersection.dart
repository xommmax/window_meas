import 'dart:ui';

import 'package:window_meas/features/editor/data/model/line.dart';

class Intersection {
  Line line1;
  Line line2;
  Offset point;

  Intersection(this.line1, this.line2, this.point);

  static Intersection? findIntersection(Line line1, Line line2) {
    double denominator, a, b, numerator1, numerator2;
    Offset intersectionPoint = const Offset(0, 0);

    denominator = ((line2.p2.dy - line2.p1.dy) * (line1.p2.dx - line1.p1.dx)) -
        ((line2.p2.dx - line2.p1.dx) * (line1.p2.dy - line1.p1.dy));

    if (denominator == 0) {
      return null;
    }

    a = line1.p1.dy - line2.p1.dy;
    b = line1.p1.dx - line2.p1.dx;

    numerator1 = ((line2.p2.dx - line2.p1.dx) * a) - ((line2.p2.dy - line2.p1.dy) * b);
    numerator2 = ((line1.p2.dx - line1.p1.dx) * a) - ((line1.p2.dy - line1.p1.dy) * b);

    a = numerator1 / denominator;
    b = numerator2 / denominator;

    // If we cast these lines infinitely in both directions, they intersect here:
    intersectionPoint = Offset(line1.p1.dx + (a * (line1.p2.dx - line1.p1.dx)),
        line1.p1.dy + (a * (line1.p2.dy - line1.p1.dy)));

    // If line1 is a segment and line2 is infinite, they intersect if:
    if (a >= 0 && a <= 1 && b >= 0 && b <= 1) {
      return Intersection(line1, line2, intersectionPoint);
    } else {
      return null;
    }
  }

  static bool equals(Intersection intersection1, Intersection intersection2) =>
      intersection1.point == intersection2.point &&
      ((intersection1.line1 == intersection2.line1 && intersection1.line2 == intersection2.line2) ||
          (intersection1.line1 == intersection2.line2 &&
              intersection1.line2 == intersection2.line1));
}
