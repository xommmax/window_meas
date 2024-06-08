import 'dart:ui';
import 'package:window_meas/features/editor/data/model/polygon.dart';

Polygon combinePolygons(Polygon poly1, Polygon poly2) {
  if (poly1.points.last == poly1.points.first) {
    poly1 = poly1.copyWith(
      points: poly1.points.sublist(0, poly1.points.length - 1),
    );
  }
  if (poly2.points.last == poly2.points.first) {
    poly2 = poly2.copyWith(
      points: poly2.points.sublist(0, poly2.points.length - 1),
    );
  }

  // Find the shared edge
  List<Offset> sharedEdge = [];

  for (Offset p1 in poly1.points) {
    if (poly2.points.contains(p1)) {
      sharedEdge.add(p1);
    }
  }

  // Create the combined polygon points list
  List<Offset> combinedPoints = [];

  // Add points from the first polygon
  bool crossSharedEdge = false;
  int startIndex = poly1.points.indexOf(poly1.points.firstWhere((e) => !sharedEdge.contains(e)));

  for (int i = 0; i < poly1.points.length; i++) {
    Offset p = poly1.points[(startIndex + i) % poly1.points.length];
    if (!sharedEdge.contains(p)) {
      combinedPoints.add(p);
    } else if (!crossSharedEdge) {
      crossSharedEdge = true;
      // Find the insertion index in the second polygon to maintain order
      int sharedIndex = poly2.points.indexOf(p);

      int direction;
      if (!sharedEdge.contains(poly2.points[(sharedIndex + 1) % poly2.points.length])) {
        direction = 1;
      } else {
        direction = -1;
      }

      // Add points from the second polygon
      for (int j = 0; j < poly2.points.length; j++) {
        Offset p = poly2.points[(sharedIndex + j * direction) % poly2.points.length];
        if (j != 0 && sharedEdge.contains(p)) {
          combinedPoints.add(p);
          break;
        } else {
          combinedPoints.add(p);
        }
      }
    }
  }

  return Polygon(points: combinedPoints);
}
