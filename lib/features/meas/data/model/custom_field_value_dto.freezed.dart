// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'custom_field_value_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CustomFieldValue _$CustomFieldValueFromJson(Map<String, dynamic> json) {
  return _CustomFieldValue.fromJson(json);
}

/// @nodoc
mixin _$CustomFieldValue {
  int? get id => throw _privateConstructorUsedError;
  dynamic get value => throw _privateConstructorUsedError;
  int? get sort => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomFieldValueCopyWith<CustomFieldValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomFieldValueCopyWith<$Res> {
  factory $CustomFieldValueCopyWith(
          CustomFieldValue value, $Res Function(CustomFieldValue) then) =
      _$CustomFieldValueCopyWithImpl<$Res, CustomFieldValue>;
  @useResult
  $Res call({int? id, dynamic value, int? sort});
}

/// @nodoc
class _$CustomFieldValueCopyWithImpl<$Res, $Val extends CustomFieldValue>
    implements $CustomFieldValueCopyWith<$Res> {
  _$CustomFieldValueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? value = freezed,
    Object? sort = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
      sort: freezed == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CustomFieldValueImplCopyWith<$Res>
    implements $CustomFieldValueCopyWith<$Res> {
  factory _$$CustomFieldValueImplCopyWith(_$CustomFieldValueImpl value,
          $Res Function(_$CustomFieldValueImpl) then) =
      __$$CustomFieldValueImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, dynamic value, int? sort});
}

/// @nodoc
class __$$CustomFieldValueImplCopyWithImpl<$Res>
    extends _$CustomFieldValueCopyWithImpl<$Res, _$CustomFieldValueImpl>
    implements _$$CustomFieldValueImplCopyWith<$Res> {
  __$$CustomFieldValueImplCopyWithImpl(_$CustomFieldValueImpl _value,
      $Res Function(_$CustomFieldValueImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? value = freezed,
    Object? sort = freezed,
  }) {
    return _then(_$CustomFieldValueImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
      sort: freezed == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomFieldValueImpl extends _CustomFieldValue {
  const _$CustomFieldValueImpl({this.id, required this.value, this.sort})
      : super._();

  factory _$CustomFieldValueImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomFieldValueImplFromJson(json);

  @override
  final int? id;
  @override
  final dynamic value;
  @override
  final int? sort;

  @override
  String toString() {
    return 'CustomFieldValue(id: $id, value: $value, sort: $sort)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomFieldValueImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other.value, value) &&
            (identical(other.sort, sort) || other.sort == sort));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, const DeepCollectionEquality().hash(value), sort);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomFieldValueImplCopyWith<_$CustomFieldValueImpl> get copyWith =>
      __$$CustomFieldValueImplCopyWithImpl<_$CustomFieldValueImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomFieldValueImplToJson(
      this,
    );
  }
}

abstract class _CustomFieldValue extends CustomFieldValue {
  const factory _CustomFieldValue(
      {final int? id,
      required final dynamic value,
      final int? sort}) = _$CustomFieldValueImpl;
  const _CustomFieldValue._() : super._();

  factory _CustomFieldValue.fromJson(Map<String, dynamic> json) =
      _$CustomFieldValueImpl.fromJson;

  @override
  int? get id;
  @override
  dynamic get value;
  @override
  int? get sort;
  @override
  @JsonKey(ignore: true)
  _$$CustomFieldValueImplCopyWith<_$CustomFieldValueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
