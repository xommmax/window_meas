import 'dart:math';
import 'dart:ui';

import 'package:window_meas/features/editor/data/model/polygon.dart';

bool doPolygonsOverlap(Polygon poly1, Polygon poly2) {
  for (int i = 0; i < poly1.points.length; i++) {
    Offset p1 = poly1.points[i];
    Offset p2 = poly1.points[(i + 1) % poly1.points.length];
    for (int j = 0; j < poly2.points.length; j++) {
      Offset q1 = poly2.points[j];
      Offset q2 = poly2.points[(j + 1) % poly2.points.length];
      if (doEdgesIntersect(p1, p2, q1, q2)) {
        return true;
      }
    }
  }

  if (isPolygonContained(poly1, poly2) || isPolygonContained(poly2, poly1)) {
    return true;
  }

  return false;
}

bool doEdgesIntersect(Offset p1, Offset p2, Offset q1, Offset q2) {
  double o1 = orientation(p1, p2, q1);
  double o2 = orientation(p1, p2, q2);
  double o3 = orientation(q1, q2, p1);
  double o4 = orientation(q1, q2, p2);

  if (o1 != o2 && o3 != o4) {
    return true;
  }

  if (o1 == 0 && onSegment(p1, q1, p2)) return true;
  if (o2 == 0 && onSegment(p1, q2, p2)) return true;
  if (o3 == 0 && onSegment(q1, p1, q2)) return true;
  if (o4 == 0 && onSegment(q1, p2, q2)) return true;

  return false;
}

double orientation(Offset p, Offset q, Offset r) {
  double val = (q.dy - p.dy) * (r.dx - q.dx) - (q.dx - p.dx) * (r.dy - q.dy);
  if (val == 0) return 0;
  return (val > 0) ? 1 : 2;
}

bool onSegment(Offset p, Offset q, Offset r) {
  if (q.dx <= max(p.dx, r.dx) &&
      q.dx >= min(p.dx, r.dx) &&
      q.dy <= max(p.dy, r.dy) &&
      q.dy >= min(p.dy, r.dy)) {
    return true;
  }
  return false;
}

bool isPolygonContained(Polygon poly1, Polygon poly2) {
  for (Offset p in poly1.points) {
    if (!isPointInPolygon(p, poly2)) {
      return false;
    }
  }
  return true;
}

bool isPointInPolygon(Offset point, Polygon polygon) {
  bool isInside = false;
  int n = polygon.points.length;

  for (int i = 0, j = n - 1; i < n; j = i++) {
    final vi = polygon.points[i];
    final vj = polygon.points[j];

    bool intersect = ((vi.dy > point.dy) != (vj.dy > point.dy)) &&
        (point.dx < (vj.dx - vi.dx) * (point.dy - vi.dy) / (vj.dy - vi.dy) + vi.dx);
    if (intersect) isInside = !isInside;
  }

  return isInside;
}

bool isPointOnEdge(Offset point, Offset v1, Offset v2) {
  return orientation(v1, v2, point) == 0 && onSegment(v1, point, v2);
}
