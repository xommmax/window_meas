import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:replay_bloc/replay_bloc.dart';
import 'package:window_meas/common/ext/line_ext.dart';
import 'package:window_meas/features/editor/view/components.dart';
import 'package:window_meas/features/editor/view/meas_clicked_event.dart';

part 'drawing_cubit.freezed.dart';

@injectable
class DrawingCubit extends ReplayCubit<DrawingState> {
  DrawingCubit() : super(const DrawingState());

  void addLine(Line newLine) {
    if (newLine.$1 == newLine.$2 || newLine.$1 == null || newLine.$2 == null) return;
    final lines = List.of(state.lines);

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
    emit(state.copyWith(lines: lines));
  }

  void onMeasurementTap(MeasurementTapEvent measTap) {
    debugPrint('onMeasurementTap: $measTap');
  }
}

@freezed
class DrawingState with _$DrawingState {
  const factory DrawingState({
    @Default([]) List<Line> lines,
  }) = _DrawingState;
}
