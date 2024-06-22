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
          selectValues: $checkedConvert('select_values',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          isDeletable: $checkedConvert('is_deletable', (v) => v as bool?),
          sort: $checkedConvert('sort', (v) => (v as num?)?.toInt()),
        );
        return val;
      },
      fieldKeyMap: const {
        'selectValues': 'select_values',
        'isDeletable': 'is_deletable'
      },
    );
