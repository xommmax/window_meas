// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_field_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CustomFieldDTOImpl _$$CustomFieldDTOImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$CustomFieldDTOImpl',
      json,
      ($checkedConvert) {
        final val = _$CustomFieldDTOImpl(
          id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
          fieldId: $checkedConvert('field_id', (v) => (v as num?)?.toInt()),
          code: $checkedConvert('code', (v) => v as String?),
          name: $checkedConvert('name', (v) => v as String?),
          type: $checkedConvert('type', (v) => v as String?),
          enums: $checkedConvert(
              'enums',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      CustomFieldValue.fromJson(e as Map<String, dynamic>))
                  .toList()),
          values: $checkedConvert(
              'values',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      CustomFieldValue.fromJson(e as Map<String, dynamic>))
                  .toList()),
          isDeletable: $checkedConvert('is_deletable', (v) => v as bool?),
          sort: $checkedConvert('sort', (v) => (v as num?)?.toInt()),
        );
        return val;
      },
      fieldKeyMap: const {'fieldId': 'field_id', 'isDeletable': 'is_deletable'},
    );

Map<String, dynamic> _$$CustomFieldDTOImplToJson(
    _$CustomFieldDTOImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('field_id', instance.fieldId);
  writeNotNull('code', instance.code);
  writeNotNull('name', instance.name);
  writeNotNull('type', instance.type);
  writeNotNull('enums', instance.enums?.map((e) => e.toJson()).toList());
  writeNotNull('values', instance.values?.map((e) => e.toJson()).toList());
  writeNotNull('is_deletable', instance.isDeletable);
  writeNotNull('sort', instance.sort);
  return val;
}
