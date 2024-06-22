// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_field_value_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CustomFieldValueImpl _$$CustomFieldValueImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$CustomFieldValueImpl',
      json,
      ($checkedConvert) {
        final val = _$CustomFieldValueImpl(
          id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
          value: $checkedConvert('value', (v) => v),
          sort: $checkedConvert('sort', (v) => (v as num).toInt()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$CustomFieldValueImplToJson(
    _$CustomFieldValueImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['value'] = instance.value;
  val['sort'] = instance.sort;
  return val;
}
