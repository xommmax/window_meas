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
    final Template template;
    if (state.template != null) {
      template = state.template!.copyWith(scheme: scheme);
    } else {
      template = Template(
        date: DateTime.now(),
        scheme: scheme,
      );
    }

    await _templateRepository.addTemplate(template);
  }

  void setTemplate(Template? template) {
    if (template != null) {
      emit(state.copyWith(template: template));
    }
  }
}

@freezed
class EditorState with _$EditorState {
  const factory EditorState({
    required EditorMode mode,
    Template? template,
  }) = _EditorState;

  factory EditorState.initial() => const EditorState(
        mode: EditorMode.move,
        template: null,
      );
}

enum EditorMode {
  draw,
  move,
  openingType,
  fillingType,
  arch,
}
