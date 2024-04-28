import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:replay_bloc/replay_bloc.dart';
import 'package:window_meas/features/editor/view/components.dart';

part 'drawing_cubit.freezed.dart';

@injectable
class DrawingCubit extends ReplayCubit<DrawingState> {
  DrawingCubit() : super(const DrawingState());

  void addLine(Line line) {
    if (line.$1 == line.$2) return;

    emit(state.copyWith(
      lines: [...state.lines, line],
    ));
  }
}

@freezed
class DrawingState with _$DrawingState {
  const factory DrawingState({
    @Default([]) List<Line> lines,
  }) = _DrawingState;
}
