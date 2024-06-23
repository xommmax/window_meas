import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:window_meas/features/measurement/data/remote/model/custom_field_value_dto.dart';

part 'custom_field_dto.freezed.dart';
part 'custom_field_dto.g.dart';

@freezed
class CustomFieldDTO with _$CustomFieldDTO {
  const CustomFieldDTO._();

  const factory CustomFieldDTO({
    int? id,
    int? fieldId,
    String? code,
    String? fieldCode,
    String? name,
    String? type,
    List<CustomFieldValue>? enums,
    List<CustomFieldValue>? values,
    bool? isDeletable,
    int? sort,
  }) = _CustomFieldDTO;

  factory CustomFieldDTO.fromJson(Map<String, dynamic> json) => _$CustomFieldDTOFromJson(json);
}
