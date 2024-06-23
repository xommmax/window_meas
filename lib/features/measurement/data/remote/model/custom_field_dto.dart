import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:window_meas/features/measurement/data/remote/model/custom_field_value_dto.dart';

part 'custom_field_dto.freezed.dart';
part 'custom_field_dto.g.dart';

@freezed
class CustomFieldDTO with _$CustomFieldDTO {
  const CustomFieldDTO._();

  const factory CustomFieldDTO({
    required String name,
    required String type,
    int? id,
    int? fieldId,
    List<CustomFieldValue>? enums,
    List<CustomFieldValue>? values,
    bool? isDeletable,
    required int sort,
    String? code,
  }) = _CustomFieldDTO;

  @override
  @JsonKey(includeIfNull: false)
  int? get id => super.id;

  @override
  @JsonKey(includeIfNull: false)
  int? get fieldId => super.fieldId;

  @override
  @JsonKey(includeIfNull: false)
  List<CustomFieldValue>? get enums => super.enums;

  @override
  @JsonKey(includeIfNull: false)
  List<CustomFieldValue>? get values => super.values;

  @override
  @JsonKey(includeIfNull: false)
  String? get code => super.code;

  factory CustomFieldDTO.fromJson(Map<String, dynamic> json) => _$CustomFieldDTOFromJson(json);
}
