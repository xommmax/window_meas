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
          name: $checkedConvert('name', (v) => v as String),
          type: $checkedConvert('type', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$CustomFieldDTOImplToJson(
        _$CustomFieldDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
    };
