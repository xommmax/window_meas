import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'editor_cubit.freezed.dart';

@injectable
class EditorCubit extends Cubit<EditorState> {
  EditorCubit() : super(const EditorState());

  void changeMode(EditorMode mode) => emit(state.copyWith(mode: mode));
}

@freezed
class EditorState with _$EditorState {
  const factory EditorState({
    @Default(EditorMode.draw) EditorMode mode,
  }) = _EditorState;
}

enum EditorMode {
  draw,
  move,
}
