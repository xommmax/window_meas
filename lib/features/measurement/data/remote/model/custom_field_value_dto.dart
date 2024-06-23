import 'package:freezed_annotation/freezed_annotation.dart';

part 'custom_field_value_dto.freezed.dart';
part 'custom_field_value_dto.g.dart';

@freezed
class CustomFieldValue with _$CustomFieldValue {
  const CustomFieldValue._();

  const factory CustomFieldValue({
    int? id,
    dynamic value,
    int? sort,
  }) = _CustomFieldValue;

  factory CustomFieldValue.fromJson(Map<String, dynamic> json) => _$CustomFieldValueFromJson(json);
}
