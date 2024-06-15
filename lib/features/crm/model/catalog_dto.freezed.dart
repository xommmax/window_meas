// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'catalog_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CatalogDTO _$CatalogDTOFromJson(Map<String, dynamic> json) {
  return _CatalogDTO.fromJson(json);
}

/// @nodoc
mixin _$CatalogDTO {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get createdAt => throw _privateConstructorUsedError;
  int get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CatalogDTOCopyWith<CatalogDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatalogDTOCopyWith<$Res> {
  factory $CatalogDTOCopyWith(
          CatalogDTO value, $Res Function(CatalogDTO) then) =
      _$CatalogDTOCopyWithImpl<$Res, CatalogDTO>;
  @useResult
  $Res call({int id, String name, int createdAt, int updatedAt});
}

/// @nodoc
class _$CatalogDTOCopyWithImpl<$Res, $Val extends CatalogDTO>
    implements $CatalogDTOCopyWith<$Res> {
  _$CatalogDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? createdAt = null,
    Object? updatedAt = null,
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
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CatalogDTOImplCopyWith<$Res>
    implements $CatalogDTOCopyWith<$Res> {
  factory _$$CatalogDTOImplCopyWith(
          _$CatalogDTOImpl value, $Res Function(_$CatalogDTOImpl) then) =
      __$$CatalogDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, int createdAt, int updatedAt});
}

/// @nodoc
class __$$CatalogDTOImplCopyWithImpl<$Res>
    extends _$CatalogDTOCopyWithImpl<$Res, _$CatalogDTOImpl>
    implements _$$CatalogDTOImplCopyWith<$Res> {
  __$$CatalogDTOImplCopyWithImpl(
      _$CatalogDTOImpl _value, $Res Function(_$CatalogDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$CatalogDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CatalogDTOImpl extends _CatalogDTO {
  const _$CatalogDTOImpl(
      {required this.id,
      required this.name,
      required this.createdAt,
      required this.updatedAt})
      : super._();

  factory _$CatalogDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$CatalogDTOImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final int createdAt;
  @override
  final int updatedAt;

  @override
  String toString() {
    return 'CatalogDTO(id: $id, name: $name, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CatalogDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CatalogDTOImplCopyWith<_$CatalogDTOImpl> get copyWith =>
      __$$CatalogDTOImplCopyWithImpl<_$CatalogDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CatalogDTOImplToJson(
      this,
    );
  }
}

abstract class _CatalogDTO extends CatalogDTO {
  const factory _CatalogDTO(
      {required final int id,
      required final String name,
      required final int createdAt,
      required final int updatedAt}) = _$CatalogDTOImpl;
  const _CatalogDTO._() : super._();

  factory _CatalogDTO.fromJson(Map<String, dynamic> json) =
      _$CatalogDTOImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  int get createdAt;
  @override
  int get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$CatalogDTOImplCopyWith<_$CatalogDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
