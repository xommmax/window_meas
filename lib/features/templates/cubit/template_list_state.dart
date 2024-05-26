import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:window_meas/features/templates/data/model/template.dart';

part 'template_list_state.freezed.dart';

@freezed
class TemplateListState with _$TemplateListState {
  const TemplateListState._();

  const factory TemplateListState({
    required List<Template> templates,
  }) = _TemplateListState;

  factory TemplateListState.empty() => const TemplateListState(templates: []);
}
