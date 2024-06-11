import 'dart:ui';

import 'package:window_meas/features/calc/poly_combine.dart';
import 'package:window_meas/features/calc/poly_convex.dart';
import 'package:window_meas/features/calc/poly_intersection.dart';
import 'package:window_meas/features/editor/data/model/polygon.dart';
import 'package:window_meas/features/editor/ext/offset_ext.dart';

extension PolygonExt on Polygon {
  bool overlaps(Polygon other) => doPolygonsOverlap(this, other);

  Polygon combine(Polygon other) => combinePolygons(this, other);

  bool isConvex() => isPolygonConvex(this);

  double globalWidth(Size size) {
    var minX = double.infinity;
    var maxX = double.negativeInfinity;
    for (var point in points) {
      final globalPoint = point.toGlobalCoord(size);

      if (globalPoint.dx < minX) {
        minX = globalPoint.dx;
      }
      if (globalPoint.dx > maxX) {
        maxX = globalPoint.dx;
      }
    }
    return maxX - minX;
  }

  double globalHeight(Size size) {
    var minY = double.infinity;
    var maxY = double.negativeInfinity;
    for (var point in points) {
      final globalPoint = point.toGlobalCoord(size);

      if (globalPoint.dy < minY) {
        minY = globalPoint.dy;
      }
      if (globalPoint.dy > maxY) {
        maxY = globalPoint.dy;
      }
    }
    return maxY - minY;
  }

  double globalLeft(Size size) {
    var minX = double.infinity;
    for (var point in points) {
      final globalPoint = point.toGlobalCoord(size);

      if (globalPoint.dx < minX) {
        minX = globalPoint.dx;
      }
    }
    return minX;
  }

  double globalTop(Size size) {
    var minY = double.infinity;
    for (var point in points) {
      final globalPoint = point.toGlobalCoord(size);

      if (globalPoint.dy < minY) {
        minY = globalPoint.dy;
      }
    }
    return minY;
  }

  double templateWidth(Size size, int gridAmount, int minX, int minY) {
    var templateMinX = double.infinity;
    var templateMaxX = double.negativeInfinity;
    for (var point in points) {
      final globalPoint = point.toTemplateCoord(size, gridAmount, minX, minY);

      if (globalPoint.dx < templateMinX) {
        templateMinX = globalPoint.dx;
      }
      if (globalPoint.dx > templateMaxX) {
        templateMaxX = globalPoint.dx;
      }
    }
    return templateMaxX - templateMinX;
  }

  double templateHeight(Size size, int gridAmount, int minX, int minY) {
    var templateMinY = double.infinity;
    var templateMaxY = double.negativeInfinity;
    for (var point in points) {
      final globalPoint = point.toTemplateCoord(size, gridAmount, minX, minY);

      if (globalPoint.dy < templateMinY) {
        templateMinY = globalPoint.dy;
      }
      if (globalPoint.dy > templateMaxY) {
        templateMaxY = globalPoint.dy;
      }
    }
    return templateMaxY - templateMinY;
  }

  double templateLeft(Size size, int gridAmount, int minX, int minY) {
    var polygonMinX = double.infinity;
    for (var point in points) {
      final templatePoint = point.toTemplateCoord(size, gridAmount, minX, minY);

      if (templatePoint.dx < polygonMinX) {
        polygonMinX = templatePoint.dx;
      }
    }
    return polygonMinX;
  }

  double templateTop(Size size, int gridAmount, int minX, int minY) {
    var polygonMinY = double.infinity;
    for (var point in points) {
      final templatePoint = point.toTemplateCoord(size, gridAmount, minX, minY);

      if (templatePoint.dy < polygonMinY) {
        polygonMinY = templatePoint.dy;
      }
    }
    return polygonMinY;
  }
}
