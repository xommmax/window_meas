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
          name: $checkedConvert('name', (v) => v as String),
          createdAt: $checkedConvert('created_at', (v) => (v as num).toInt()),
          updatedAt: $checkedConvert('updated_at', (v) => (v as num).toInt()),
          requestId: $checkedConvert('request_id', (v) => v as String),
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
        'createdAt': 'created_at',
        'updatedAt': 'updated_at',
        'requestId': 'request_id',
        'customFieldsValues': 'custom_fields_values'
      },
    );

Map<String, dynamic> _$$MeasurementDTOImplToJson(
        _$MeasurementDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'request_id': instance.requestId,
      'custom_fields_values':
          instance.customFieldsValues?.map((e) => e.toJson()).toList(),
    };
