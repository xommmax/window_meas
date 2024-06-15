// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CatalogDTOImpl _$$CatalogDTOImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$CatalogDTOImpl',
      json,
      ($checkedConvert) {
        final val = _$CatalogDTOImpl(
          id: $checkedConvert('id', (v) => (v as num).toInt()),
          name: $checkedConvert('name', (v) => v as String),
          createdAt: $checkedConvert('created_at', (v) => (v as num).toInt()),
          updatedAt: $checkedConvert('updated_at', (v) => (v as num).toInt()),
        );
        return val;
      },
      fieldKeyMap: const {'createdAt': 'created_at', 'updatedAt': 'updated_at'},
    );

Map<String, dynamic> _$$CatalogDTOImplToJson(_$CatalogDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
