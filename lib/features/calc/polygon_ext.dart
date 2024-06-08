import 'package:window_meas/features/calc/poly_combine.dart';
import 'package:window_meas/features/calc/poly_convex.dart';
import 'package:window_meas/features/calc/poly_intersection.dart';
import 'package:window_meas/features/editor/data/model/polygon.dart';

extension PolygonExt on Polygon {
  bool overlaps(Polygon other) => doPolygonsOverlap(this, other);

  Polygon combine(Polygon other) => combinePolygons(this, other);

  bool isConvex() => isPolygonConvex(this);
}
