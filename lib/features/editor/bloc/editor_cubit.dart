import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:window_meas/features/editor/data/model/scheme.dart';
import 'package:window_meas/features/templates/data/model/template.dart';
import 'package:window_meas/features/templates/data/template_repo.dart';

part 'editor_cubit.freezed.dart';

@injectable
class EditorCubit extends Cubit<EditorState> {
  EditorCubit(this._templateRepository) : super(EditorState.initial());

  final TemplateRepository _templateRepository;

  void changeMode(EditorMode mode) => emit(state.copyWith(mode: mode));

  Future<void> saveTemplate(Scheme scheme) async {
    final template = Template(
      date: DateTime.now(),
      scheme: scheme,
    );

    await _templateRepository.addTemplate(template);
  }
}

@freezed
class EditorState with _$EditorState {
  const factory EditorState({
    required EditorMode mode,
  }) = _EditorState;

  factory EditorState.initial() => const EditorState(
        mode: EditorMode.draw,
      );
}

enum EditorMode {
  draw,
  move,
  openingType,
  fillingType,
}
