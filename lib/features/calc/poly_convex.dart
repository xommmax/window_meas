import 'package:window_meas/features/editor/data/model/polygon.dart';

bool isPolygonConvex(Polygon polygon) {
  int numVertices = polygon.points.length;
  if (numVertices < 3) return false;

  bool gotNegative = false;
  bool gotPositive = false;

  for (int i = 0; i < numVertices; i++) {
    int j = (i + 1) % numVertices;
    int k = (i + 2) % numVertices;

    final a = polygon.points[i];
    final b = polygon.points[j];
    final c = polygon.points[k];

    double crossProduct = (b.dx - a.dx) * (c.dy - b.dy) - (b.dy - a.dy) * (c.dx - b.dx);

    if (crossProduct < 0) {
      gotNegative = true;
    } else if (crossProduct > 0) {
      gotPositive = true;
    }

    if (gotNegative && gotPositive) {
      return false;
    }
  }

  return true;
}
