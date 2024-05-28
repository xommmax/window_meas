import 'dart:collection';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:replay_bloc/replay_bloc.dart';
import 'package:window_meas/common/ext/line_ext.dart';
import 'package:window_meas/features/calc/polygon/line_segment.dart';
import 'package:window_meas/features/calc/polygon/point.dart';
import 'package:window_meas/features/calc/polygon/polygon_finder.dart';
import 'package:window_meas/features/editor/bloc/drawing_state.dart';
import 'package:window_meas/features/editor/data/model/segment.dart';
import 'package:window_meas/features/editor/view/components.dart';
import 'package:window_meas/features/meas/data/model/scheme.dart';

@injectable
class DrawingCubit extends ReplayCubit<DrawingState> {
  DrawingCubit() : super(DrawingState.initial());

  void setScheme(Scheme? scheme) {
    if (scheme != null) {
      emit(state.copyWith(scheme: scheme));
    }
  }

  void addLine(Line newLine) {
    if (newLine.$1 == newLine.$2) return;
    final lines = List.of(state.scheme.lines);

    bool isOverlapping;
    do {
      isOverlapping = false;
      for (final line in lines) {
        if (line.isOverlapping(newLine)) {
          isOverlapping = true;
          lines.remove(line);
          newLine = line.mergeOverlapping(newLine);
          break;
        }
      }
    } while (isOverlapping);

    lines.add(newLine);

    final segments = _calculateSegments(lines);

    calculatePolygons(lines);

    emit(state.copyWith(scheme: state.scheme.copyWith(lines: lines, segments: segments)));
  }

  List<Segment> _calculateSegments(List<Line> lines) {
    final List<Segment> newSegments = [];
    final xNodes = SplayTreeSet();
    final yNodes = SplayTreeSet();
    for (final line in lines) {
      xNodes.addAll([line.$1.dx, line.$2.dx]);
      yNodes.addAll([line.$1.dy, line.$2.dy]);
    }

    if (xNodes.length >= 2) {
      final mainHorSegment = Segment(
        p1: Offset(xNodes.first, yNodes.first),
        p2: Offset(xNodes.last, yNodes.first),
        size: null,
        direction: SegmentDirection.horizontal,
        isMain: true,
        index: -1,
      );
      newSegments.add(mainHorSegment);

      if (xNodes.length >= 3) {
        for (int i = 1; i < xNodes.length; i++) {
          final horSegment = Segment(
            p1: Offset(xNodes.elementAt(i - 1), yNodes.first),
            p2: Offset(xNodes.elementAt(i), yNodes.first),
            size: null,
            direction: SegmentDirection.horizontal,
            isMain: false,
            index: i - 1,
          );
          newSegments.add(horSegment);
        }
      }
    }

    if (yNodes.length >= 2) {
      final mainVerSegment = Segment(
        p1: Offset(xNodes.first, yNodes.first),
        p2: Offset(xNodes.first, yNodes.last),
        size: null,
        direction: SegmentDirection.vertical,
        isMain: true,
        index: -1,
      );
      newSegments.add(mainVerSegment);

      if (yNodes.length >= 3) {
        for (int i = 1; i < yNodes.length; i++) {
          final verSegment = Segment(
            p1: Offset(xNodes.first, yNodes.elementAt(i - 1)),
            p2: Offset(xNodes.first, yNodes.elementAt(i)),
            size: null,
            direction: SegmentDirection.vertical,
            isMain: false,
            index: i - 1,
          );
          newSegments.add(verSegment);
        }
      }
    }

    for (int i = 0; i < newSegments.length; i++) {
      final prevSegment = state.scheme.segments.firstWhereOrNull(
        (e) => e.p1 == newSegments[i].p1 && e.p2 == newSegments[i].p2,
      );
      if (prevSegment != null) {
        newSegments[i] = newSegments[i].copyWith(size: prevSegment.size);
      }
    }

    return newSegments;
  }

  void calculatePolygons(List<Line> lines) {
    final polygons = PolygonFinder.polygonsFromSegments(
      lines.map((e) => LineSegment(Point(e.$1.dx, -e.$1.dy), Point(e.$2.dx, -e.$2.dy))).toList(),
    );

    debugPrint('QAQAQ Polygons count: ${polygons.length}');

    debugPrint('QAQAQ Polygons: $polygons');
  }

  void addSegment(Segment segment) {
    final segments = List.of(state.scheme.segments);
    segments.removeWhere((e) => e.p1 == segment.p1 && e.p2 == segment.p2);
    segments.add(segment);
    emit(state.copyWith(scheme: state.scheme.copyWith(segments: segments)));
  }
}
