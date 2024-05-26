import 'dart:collection';
import 'dart:ui';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:replay_bloc/replay_bloc.dart';
import 'package:window_meas/common/ext/line_ext.dart';
import 'package:window_meas/features/editor/bloc/drawing_state.dart';
import 'package:window_meas/features/editor/data/model/segment.dart';
import 'package:window_meas/features/editor/view/components.dart';

@injectable
class DrawingCubit extends ReplayCubit<DrawingState> {
  DrawingCubit() : super(DrawingState.initial());

  void addLine(Line newLine) {
    if (newLine.$1 == newLine.$2 || newLine.$1 == null || newLine.$2 == null) return;
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

    final segments = _recalculateSegments(lines);

    emit(state.copyWith(scheme: state.scheme.copyWith(lines: lines, segments: segments)));
  }

  List<Segment> _recalculateSegments(List<Line> lines) {
    final List<Segment> newSegments = [];
    final xNodes = SplayTreeSet();
    final yNodes = SplayTreeSet();
    for (final line in lines) {
      if (line.$1 != null && line.$2 != null) {
        final p1 = line.$1!;
        final p2 = line.$2!;
        xNodes.addAll([p1.dx, p2.dx]);
        yNodes.addAll([p1.dy, p2.dy]);
      }
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
      final sameSegment = state.scheme.segments.firstWhereOrNull(
        (e) => e.p1 == newSegments[i].p1 && e.p2 == newSegments[i].p2,
      );
      if (sameSegment != null) newSegments[i] = sameSegment;
    }

    return newSegments;
  }

  void addSegment(Segment segment) {
    final segments = List.of(state.scheme.segments);
    segments.removeWhere((e) => e.p1 == segment.p1 && e.p2 == segment.p2);
    segments.add(segment);
    emit(state.copyWith(scheme: state.scheme.copyWith(segments: segments)));
  }
}
