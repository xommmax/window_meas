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
  String get name => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  int? get fieldId => throw _privateConstructorUsedError;
  List<CustomFieldValue>? get enums => throw _privateConstructorUsedError;
  List<CustomFieldValue>? get values => throw _privateConstructorUsedError;
  bool? get isDeletable => throw _privateConstructorUsedError;
  int get sort => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;

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
      {String name,
      String type,
      int? id,
      int? fieldId,
      List<CustomFieldValue>? enums,
      List<CustomFieldValue>? values,
      bool? isDeletable,
      int sort,
      String? code});
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
    Object? name = null,
    Object? type = null,
    Object? id = freezed,
    Object? fieldId = freezed,
    Object? enums = freezed,
    Object? values = freezed,
    Object? isDeletable = freezed,
    Object? sort = null,
    Object? code = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      fieldId: freezed == fieldId
          ? _value.fieldId
          : fieldId // ignore: cast_nullable_to_non_nullable
              as int?,
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
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as int,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
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
      {String name,
      String type,
      int? id,
      int? fieldId,
      List<CustomFieldValue>? enums,
      List<CustomFieldValue>? values,
      bool? isDeletable,
      int sort,
      String? code});
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
    Object? name = null,
    Object? type = null,
    Object? id = freezed,
    Object? fieldId = freezed,
    Object? enums = freezed,
    Object? values = freezed,
    Object? isDeletable = freezed,
    Object? sort = null,
    Object? code = freezed,
  }) {
    return _then(_$CustomFieldDTOImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      fieldId: freezed == fieldId
          ? _value.fieldId
          : fieldId // ignore: cast_nullable_to_non_nullable
              as int?,
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
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as int,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomFieldDTOImpl extends _CustomFieldDTO {
  const _$CustomFieldDTOImpl(
      {required this.name,
      required this.type,
      this.id,
      this.fieldId,
      final List<CustomFieldValue>? enums,
      final List<CustomFieldValue>? values,
      this.isDeletable,
      required this.sort,
      this.code})
      : _enums = enums,
        _values = values,
        super._();

  factory _$CustomFieldDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomFieldDTOImplFromJson(json);

  @override
  final String name;
  @override
  final String type;
  @override
  final int? id;
  @override
  final int? fieldId;
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
  final int sort;
  @override
  final String? code;

  @override
  String toString() {
    return 'CustomFieldDTO(name: $name, type: $type, id: $id, fieldId: $fieldId, enums: $enums, values: $values, isDeletable: $isDeletable, sort: $sort, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomFieldDTOImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fieldId, fieldId) || other.fieldId == fieldId) &&
            const DeepCollectionEquality().equals(other._enums, _enums) &&
            const DeepCollectionEquality().equals(other._values, _values) &&
            (identical(other.isDeletable, isDeletable) ||
                other.isDeletable == isDeletable) &&
            (identical(other.sort, sort) || other.sort == sort) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      type,
      id,
      fieldId,
      const DeepCollectionEquality().hash(_enums),
      const DeepCollectionEquality().hash(_values),
      isDeletable,
      sort,
      code);

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
      {required final String name,
      required final String type,
      final int? id,
      final int? fieldId,
      final List<CustomFieldValue>? enums,
      final List<CustomFieldValue>? values,
      final bool? isDeletable,
      required final int sort,
      final String? code}) = _$CustomFieldDTOImpl;
  const _CustomFieldDTO._() : super._();

  factory _CustomFieldDTO.fromJson(Map<String, dynamic> json) =
      _$CustomFieldDTOImpl.fromJson;

  @override
  String get name;
  @override
  String get type;
  @override
  int? get id;
  @override
  int? get fieldId;
  @override
  List<CustomFieldValue>? get enums;
  @override
  List<CustomFieldValue>? get values;
  @override
  bool? get isDeletable;
  @override
  int get sort;
  @override
  String? get code;
  @override
  @JsonKey(ignore: true)
  _$$CustomFieldDTOImplCopyWith<_$CustomFieldDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
