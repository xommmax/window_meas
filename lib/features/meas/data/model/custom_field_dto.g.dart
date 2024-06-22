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
          name: $checkedConvert('name', (v) => v as String),
          type: $checkedConvert('type', (v) => v as String),
          id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
          fieldId: $checkedConvert('field_id', (v) => (v as num?)?.toInt()),
          enums: $checkedConvert(
              'enums',
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
  final val = <String, dynamic>{
    'name': instance.name,
    'type': instance.type,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('field_id', instance.fieldId);
  val['enums'] = instance.enums?.map((e) => e.toJson()).toList();
  val['is_deletable'] = instance.isDeletable;
  val['sort'] = instance.sort;
  return val;
}
