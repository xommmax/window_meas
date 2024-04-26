import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:window_meas/features/editor/view/editor_screen.dart';

part 'editor_cubit.freezed.dart';

class EditorCubit extends Cubit<EditorState> {
  EditorCubit() : super(const EditorState());

  void changeMode(EditorMode mode) => emit(state.copyWith(mode: mode));

  void addLine(Line line) {
    log('Line coord: ${line.$1} - ${line.$2}');
    emit(state.copyWith(
        drawingState: state.drawingState.copyWith(
          lines: [...state.drawingState.lines, line],
        ),
      ));
  }
}

@freezed
class EditorState with _$EditorState {
  const factory EditorState({
    @Default(DrawingState()) DrawingState drawingState,
    @Default(EditorMode.draw) EditorMode mode,
  }) = _EditorState;
}

@freezed
class DrawingState with _$DrawingState {
  const factory DrawingState({
    @Default([]) List<Line> lines,
  }) = _DrawingState;
}

enum EditorMode {
  draw,
  move,
}
