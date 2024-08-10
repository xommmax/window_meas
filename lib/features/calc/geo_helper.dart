import 'dart:collection';
import 'dart:ui';

import 'package:collection/collection.dart';
import 'package:window_meas/features/calc/polygon_ext.dart';
import 'package:window_meas/features/editor/data/model/arch.dart';
import 'package:window_meas/features/editor/data/model/line.dart';
import 'package:window_meas/features/editor/data/model/polygon.dart';
import 'package:window_meas/features/editor/data/model/scheme.dart';
import 'package:window_meas/features/editor/data/model/segment.dart';

class GeoHelper {
  static List<SizeSegment> calculateSegments(
    Scheme scheme, {
    List<Line>? newLines,
    List<Arch>? newArches,
  }) {
    final prevSizeSegments = scheme.sizeSegments;
    final lines = newLines ?? scheme.lines;
    final arches = newArches ?? scheme.arches;
    final List<SizeSegment> newSegments = [];
    final xNodes = SplayTreeSet<double>();
    final yNodes = SplayTreeSet<double>();
    for (final line in lines) {
      xNodes.addAll([line.p1.dx, line.p2.dx]);
      yNodes.addAll([line.p1.dy, line.p2.dy]);
    }

    for (final arch in arches) {
      xNodes.addAll([arch.p1.dx, arch.p2.dx]);
      yNodes.addAll([arch.p1.dy, arch.p2.dy]);
      if (arch.top != null) yNodes.add(arch.top!.dy);
    }

    if (xNodes.length >= 2) {
      final mainHorSegment = SizeSegment(
        p1: Offset(xNodes.first, yNodes.first),
        p2: Offset(xNodes.last, yNodes.first),
        size: null,
        comment: null,
        direction: SegmentDirection.horizontal,
        isMain: true,
        index: -1,
      );
      newSegments.add(mainHorSegment);

      if (xNodes.length >= 3) {
        for (int i = 1; i < xNodes.length; i++) {
          final horSegment = SizeSegment(
            p1: Offset(xNodes.elementAt(i - 1), yNodes.first),
            p2: Offset(xNodes.elementAt(i), yNodes.first),
            size: null,
            comment: null,
            direction: SegmentDirection.horizontal,
            isMain: false,
            index: i - 1,
          );
          newSegments.add(horSegment);
        }
      }
    }

    if (yNodes.length >= 2) {
      final mainVerSegment = SizeSegment(
        p1: Offset(xNodes.first, yNodes.first),
        p2: Offset(xNodes.first, yNodes.last),
        size: null,
        comment: null,
        direction: SegmentDirection.vertical,
        isMain: true,
        index: -1,
      );
      newSegments.add(mainVerSegment);

      if (yNodes.length >= 3) {
        for (int i = 1; i < yNodes.length; i++) {
          final verSegment = SizeSegment(
            p1: Offset(xNodes.first, yNodes.elementAt(i - 1)),
            p2: Offset(xNodes.first, yNodes.elementAt(i)),
            size: null,
            comment: null,
            direction: SegmentDirection.vertical,
            isMain: false,
            index: i - 1,
          );
          newSegments.add(verSegment);
        }
      }
    }

    for (int i = 0; i < newSegments.length; i++) {
      final prevSegment = prevSizeSegments.firstWhereOrNull(
        (e) => e.p1 == newSegments[i].p1 && e.p2 == newSegments[i].p2,
      );
      if (prevSegment != null) {
        newSegments[i] = newSegments[i].copyWith(size: prevSegment.size);
      }
    }

    return newSegments;
  }

  static List<Polygon> getOverlapPolygons(Line selection, List<Polygon> polygons) {
    final rectSelection = Rect.fromPoints(selection.p1, selection.p2);
    final polySelection = Polygon(points: [
      rectSelection.topLeft,
      rectSelection.topRight,
      rectSelection.bottomRight,
      rectSelection.bottomLeft,
    ]);
    List<Polygon> overlapPolygons = [];

    for (final polygon in polygons) {
      if (polySelection.overlaps(polygon)) {
        overlapPolygons.add(polygon);
      }
    }
    return overlapPolygons;
  }

  static bool isPolygonsConvex(List<Polygon> polygons) {
    final combinedPolygon = polygons.reduce((p1, p2) => p1.combine(p2));
    return combinedPolygon.isConvex();
  }
}
