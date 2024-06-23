// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'measurement_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MeasurementDTO _$MeasurementDTOFromJson(Map<String, dynamic> json) {
  return _MeasurementDTO.fromJson(json);
}

/// @nodoc
mixin _$MeasurementDTO {
  int? get id => throw _privateConstructorUsedError;
  String? get requestId => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get createdAt => throw _privateConstructorUsedError;
  int? get updatedAt =>
      throw _privateConstructorUsedError; // all the measurement param fields
  List<CustomFieldDTO>? get customFieldsValues =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MeasurementDTOCopyWith<MeasurementDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeasurementDTOCopyWith<$Res> {
  factory $MeasurementDTOCopyWith(
          MeasurementDTO value, $Res Function(MeasurementDTO) then) =
      _$MeasurementDTOCopyWithImpl<$Res, MeasurementDTO>;
  @useResult
  $Res call(
      {int? id,
      String? requestId,
      String? name,
      int? createdAt,
      int? updatedAt,
      List<CustomFieldDTO>? customFieldsValues});
}

/// @nodoc
class _$MeasurementDTOCopyWithImpl<$Res, $Val extends MeasurementDTO>
    implements $MeasurementDTOCopyWith<$Res> {
  _$MeasurementDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? requestId = freezed,
    Object? name = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? customFieldsValues = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      requestId: freezed == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as int?,
      customFieldsValues: freezed == customFieldsValues
          ? _value.customFieldsValues
          : customFieldsValues // ignore: cast_nullable_to_non_nullable
              as List<CustomFieldDTO>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MeasurementDTOImplCopyWith<$Res>
    implements $MeasurementDTOCopyWith<$Res> {
  factory _$$MeasurementDTOImplCopyWith(_$MeasurementDTOImpl value,
          $Res Function(_$MeasurementDTOImpl) then) =
      __$$MeasurementDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? requestId,
      String? name,
      int? createdAt,
      int? updatedAt,
      List<CustomFieldDTO>? customFieldsValues});
}

/// @nodoc
class __$$MeasurementDTOImplCopyWithImpl<$Res>
    extends _$MeasurementDTOCopyWithImpl<$Res, _$MeasurementDTOImpl>
    implements _$$MeasurementDTOImplCopyWith<$Res> {
  __$$MeasurementDTOImplCopyWithImpl(
      _$MeasurementDTOImpl _value, $Res Function(_$MeasurementDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? requestId = freezed,
    Object? name = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? customFieldsValues = freezed,
  }) {
    return _then(_$MeasurementDTOImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      requestId: freezed == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as int?,
      customFieldsValues: freezed == customFieldsValues
          ? _value._customFieldsValues
          : customFieldsValues // ignore: cast_nullable_to_non_nullable
              as List<CustomFieldDTO>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MeasurementDTOImpl extends _MeasurementDTO {
  const _$MeasurementDTOImpl(
      {this.id,
      this.requestId,
      this.name,
      this.createdAt,
      this.updatedAt,
      final List<CustomFieldDTO>? customFieldsValues})
      : _customFieldsValues = customFieldsValues,
        super._();

  factory _$MeasurementDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$MeasurementDTOImplFromJson(json);

  @override
  final int? id;
  @override
  final String? requestId;
  @override
  final String? name;
  @override
  final int? createdAt;
  @override
  final int? updatedAt;
// all the measurement param fields
  final List<CustomFieldDTO>? _customFieldsValues;
// all the measurement param fields
  @override
  List<CustomFieldDTO>? get customFieldsValues {
    final value = _customFieldsValues;
    if (value == null) return null;
    if (_customFieldsValues is EqualUnmodifiableListView)
      return _customFieldsValues;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MeasurementDTO(id: $id, requestId: $requestId, name: $name, createdAt: $createdAt, updatedAt: $updatedAt, customFieldsValues: $customFieldsValues)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeasurementDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality()
                .equals(other._customFieldsValues, _customFieldsValues));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, requestId, name, createdAt,
      updatedAt, const DeepCollectionEquality().hash(_customFieldsValues));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MeasurementDTOImplCopyWith<_$MeasurementDTOImpl> get copyWith =>
      __$$MeasurementDTOImplCopyWithImpl<_$MeasurementDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MeasurementDTOImplToJson(
      this,
    );
  }
}

abstract class _MeasurementDTO extends MeasurementDTO {
  const factory _MeasurementDTO(
      {final int? id,
      final String? requestId,
      final String? name,
      final int? createdAt,
      final int? updatedAt,
      final List<CustomFieldDTO>? customFieldsValues}) = _$MeasurementDTOImpl;
  const _MeasurementDTO._() : super._();

  factory _MeasurementDTO.fromJson(Map<String, dynamic> json) =
      _$MeasurementDTOImpl.fromJson;

  @override
  int? get id;
  @override
  String? get requestId;
  @override
  String? get name;
  @override
  int? get createdAt;
  @override
  int? get updatedAt;
  @override // all the measurement param fields
  List<CustomFieldDTO>? get customFieldsValues;
  @override
  @JsonKey(ignore: true)
  _$$MeasurementDTOImplCopyWith<_$MeasurementDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
