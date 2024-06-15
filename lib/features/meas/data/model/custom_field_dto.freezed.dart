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
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

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
  $Res call({int id, String name, String type});
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
    Object? id = null,
    Object? name = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
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
  $Res call({int id, String name, String type});
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
    Object? id = null,
    Object? name = null,
    Object? type = null,
  }) {
    return _then(_$CustomFieldDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomFieldDTOImpl extends _CustomFieldDTO {
  const _$CustomFieldDTOImpl(
      {required this.id, required this.name, required this.type})
      : super._();

  factory _$CustomFieldDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomFieldDTOImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String type;

  @override
  String toString() {
    return 'CustomFieldDTO(id: $id, name: $name, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomFieldDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, type);

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
      {required final int id,
      required final String name,
      required final String type}) = _$CustomFieldDTOImpl;
  const _CustomFieldDTO._() : super._();

  factory _CustomFieldDTO.fromJson(Map<String, dynamic> json) =
      _$CustomFieldDTOImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get type;
  @override
  @JsonKey(ignore: true)
  _$$CustomFieldDTOImplCopyWith<_$CustomFieldDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
