import 'package:freezed_annotation/freezed_annotation.dart';

part 'custom_field_dto.freezed.dart';
part 'custom_field_dto.g.dart';

@Freezed(toJson: false)
class CustomFieldDTO with _$CustomFieldDTO {
  const CustomFieldDTO._();

  const factory CustomFieldDTO({
    int? id,
    required String name,
    required String type,
    List<String>? selectValues,
    bool? isDeletable,
    int? sort,
  }) = _CustomFieldDTO;

  factory CustomFieldDTO.fromJson(Map<String, dynamic> json) => _$CustomFieldDTOFromJson(json);

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json['name'] = name;
    json['type'] = type;
    if (id != null) {
      json['id'] = id;
    }
    if (selectValues != null) {
      json['enums'] = selectValues!.map((e) => {'value': e}).toList();
    }
    if (sort != null) {
      json['sort'] = sort;
    }

    return json;
  }
}
