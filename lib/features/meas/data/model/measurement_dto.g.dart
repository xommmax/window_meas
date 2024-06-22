// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'measurement_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MeasurementDTOImpl _$$MeasurementDTOImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$MeasurementDTOImpl',
      json,
      ($checkedConvert) {
        final val = _$MeasurementDTOImpl(
          id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
          requestId: $checkedConvert('request_id', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          createdAt: $checkedConvert('created_at', (v) => (v as num).toInt()),
          updatedAt: $checkedConvert('updated_at', (v) => (v as num).toInt()),
          customFieldsValues: $checkedConvert(
              'custom_fields_values',
              (v) => (v as List<dynamic>?)
                  ?.map(
                      (e) => CustomFieldDTO.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
      fieldKeyMap: const {
        'requestId': 'request_id',
        'createdAt': 'created_at',
        'updatedAt': 'updated_at',
        'customFieldsValues': 'custom_fields_values'
      },
    );

Map<String, dynamic> _$$MeasurementDTOImplToJson(
        _$MeasurementDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'request_id': instance.requestId,
      'name': instance.name,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'custom_fields_values':
          instance.customFieldsValues?.map((e) => e.toJson()).toList(),
    };
