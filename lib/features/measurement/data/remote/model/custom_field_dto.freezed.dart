// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'custom_field_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CustomFieldDTO _$CustomFieldDTOFromJson(Map<String, dynamic> json) {
  return _CustomFieldDTO.fromJson(json);
}

/// @nodoc
mixin _$CustomFieldDTO {
  int? get id => throw _privateConstructorUsedError;
  int? get fieldId => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  List<CustomFieldValue>? get enums => throw _privateConstructorUsedError;
  List<CustomFieldValue>? get values => throw _privateConstructorUsedError;
  bool? get isDeletable => throw _privateConstructorUsedError;
  int? get sort => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomFieldDTOCopyWith<CustomFieldDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomFieldDTOCopyWith<$Res> {
  factory $CustomFieldDTOCopyWith(
          CustomFieldDTO value, $Res Function(CustomFieldDTO) then) =
      _$CustomFieldDTOCopyWithImpl<$Res, CustomFieldDTO>;
  @useResult
  $Res call(
      {int? id,
      int? fieldId,
      String? code,
      String? name,
      String? type,
      List<CustomFieldValue>? enums,
      List<CustomFieldValue>? values,
      bool? isDeletable,
      int? sort});
}

/// @nodoc
class _$CustomFieldDTOCopyWithImpl<$Res, $Val extends CustomFieldDTO>
    implements $CustomFieldDTOCopyWith<$Res> {
  _$CustomFieldDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fieldId = freezed,
    Object? code = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? enums = freezed,
    Object? values = freezed,
    Object? isDeletable = freezed,
    Object? sort = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      fieldId: freezed == fieldId
          ? _value.fieldId
          : fieldId // ignore: cast_nullable_to_non_nullable
              as int?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      enums: freezed == enums
          ? _value.enums
          : enums // ignore: cast_nullable_to_non_nullable
              as List<CustomFieldValue>?,
      values: freezed == values
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as List<CustomFieldValue>?,
      isDeletable: freezed == isDeletable
          ? _value.isDeletable
          : isDeletable // ignore: cast_nullable_to_non_nullable
              as bool?,
      sort: freezed == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CustomFieldDTOImplCopyWith<$Res>
    implements $CustomFieldDTOCopyWith<$Res> {
  factory _$$CustomFieldDTOImplCopyWith(_$CustomFieldDTOImpl value,
          $Res Function(_$CustomFieldDTOImpl) then) =
      __$$CustomFieldDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? fieldId,
      String? code,
      String? name,
      String? type,
      List<CustomFieldValue>? enums,
      List<CustomFieldValue>? values,
      bool? isDeletable,
      int? sort});
}

/// @nodoc
class __$$CustomFieldDTOImplCopyWithImpl<$Res>
    extends _$CustomFieldDTOCopyWithImpl<$Res, _$CustomFieldDTOImpl>
    implements _$$CustomFieldDTOImplCopyWith<$Res> {
  __$$CustomFieldDTOImplCopyWithImpl(
      _$CustomFieldDTOImpl _value, $Res Function(_$CustomFieldDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fieldId = freezed,
    Object? code = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? enums = freezed,
    Object? values = freezed,
    Object? isDeletable = freezed,
    Object? sort = freezed,
  }) {
    return _then(_$CustomFieldDTOImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      fieldId: freezed == fieldId
          ? _value.fieldId
          : fieldId // ignore: cast_nullable_to_non_nullable
              as int?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      enums: freezed == enums
          ? _value._enums
          : enums // ignore: cast_nullable_to_non_nullable
              as List<CustomFieldValue>?,
      values: freezed == values
          ? _value._values
          : values // ignore: cast_nullable_to_non_nullable
              as List<CustomFieldValue>?,
      isDeletable: freezed == isDeletable
          ? _value.isDeletable
          : isDeletable // ignore: cast_nullable_to_non_nullable
              as bool?,
      sort: freezed == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomFieldDTOImpl extends _CustomFieldDTO {
  const _$CustomFieldDTOImpl(
      {this.id,
      this.fieldId,
      this.code,
      this.name,
      this.type,
      final List<CustomFieldValue>? enums,
      final List<CustomFieldValue>? values,
      this.isDeletable,
      this.sort})
      : _enums = enums,
        _values = values,
        super._();

  factory _$CustomFieldDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomFieldDTOImplFromJson(json);

  @override
  final int? id;
  @override
  final int? fieldId;
  @override
  final String? code;
  @override
  final String? name;
  @override
  final String? type;
  final List<CustomFieldValue>? _enums;
  @override
  List<CustomFieldValue>? get enums {
    final value = _enums;
    if (value == null) return null;
    if (_enums is EqualUnmodifiableListView) return _enums;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<CustomFieldValue>? _values;
  @override
  List<CustomFieldValue>? get values {
    final value = _values;
    if (value == null) return null;
    if (_values is EqualUnmodifiableListView) return _values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? isDeletable;
  @override
  final int? sort;

  @override
  String toString() {
    return 'CustomFieldDTO(id: $id, fieldId: $fieldId, code: $code, name: $name, type: $type, enums: $enums, values: $values, isDeletable: $isDeletable, sort: $sort)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomFieldDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fieldId, fieldId) || other.fieldId == fieldId) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._enums, _enums) &&
            const DeepCollectionEquality().equals(other._values, _values) &&
            (identical(other.isDeletable, isDeletable) ||
                other.isDeletable == isDeletable) &&
            (identical(other.sort, sort) || other.sort == sort));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      fieldId,
      code,
      name,
      type,
      const DeepCollectionEquality().hash(_enums),
      const DeepCollectionEquality().hash(_values),
      isDeletable,
      sort);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomFieldDTOImplCopyWith<_$CustomFieldDTOImpl> get copyWith =>
      __$$CustomFieldDTOImplCopyWithImpl<_$CustomFieldDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomFieldDTOImplToJson(
      this,
    );
  }
}

abstract class _CustomFieldDTO extends CustomFieldDTO {
  const factory _CustomFieldDTO(
      {final int? id,
      final int? fieldId,
      final String? code,
      final String? name,
      final String? type,
      final List<CustomFieldValue>? enums,
      final List<CustomFieldValue>? values,
      final bool? isDeletable,
      final int? sort}) = _$CustomFieldDTOImpl;
  const _CustomFieldDTO._() : super._();

  factory _CustomFieldDTO.fromJson(Map<String, dynamic> json) =
      _$CustomFieldDTOImpl.fromJson;

  @override
  int? get id;
  @override
  int? get fieldId;
  @override
  String? get code;
  @override
  String? get name;
  @override
  String? get type;
  @override
  List<CustomFieldValue>? get enums;
  @override
  List<CustomFieldValue>? get values;
  @override
  bool? get isDeletable;
  @override
  int? get sort;
  @override
  @JsonKey(ignore: true)
  _$$CustomFieldDTOImplCopyWith<_$CustomFieldDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
