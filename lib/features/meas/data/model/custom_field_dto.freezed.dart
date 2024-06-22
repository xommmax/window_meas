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
  String get name => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  List<String>? get selectValues => throw _privateConstructorUsedError;
  bool? get isDeletable => throw _privateConstructorUsedError;
  int? get sort => throw _privateConstructorUsedError;

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
      String name,
      String type,
      List<String>? selectValues,
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
    Object? name = null,
    Object? type = null,
    Object? selectValues = freezed,
    Object? isDeletable = freezed,
    Object? sort = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      selectValues: freezed == selectValues
          ? _value.selectValues
          : selectValues // ignore: cast_nullable_to_non_nullable
              as List<String>?,
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
      String name,
      String type,
      List<String>? selectValues,
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
    Object? name = null,
    Object? type = null,
    Object? selectValues = freezed,
    Object? isDeletable = freezed,
    Object? sort = freezed,
  }) {
    return _then(_$CustomFieldDTOImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      selectValues: freezed == selectValues
          ? _value._selectValues
          : selectValues // ignore: cast_nullable_to_non_nullable
              as List<String>?,
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
@JsonSerializable(createToJson: false)
class _$CustomFieldDTOImpl extends _CustomFieldDTO {
  const _$CustomFieldDTOImpl(
      {this.id,
      required this.name,
      required this.type,
      final List<String>? selectValues,
      this.isDeletable,
      this.sort})
      : _selectValues = selectValues,
        super._();

  factory _$CustomFieldDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomFieldDTOImplFromJson(json);

  @override
  final int? id;
  @override
  final String name;
  @override
  final String type;
  final List<String>? _selectValues;
  @override
  List<String>? get selectValues {
    final value = _selectValues;
    if (value == null) return null;
    if (_selectValues is EqualUnmodifiableListView) return _selectValues;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? isDeletable;
  @override
  final int? sort;

  @override
  String toString() {
    return 'CustomFieldDTO(id: $id, name: $name, type: $type, selectValues: $selectValues, isDeletable: $isDeletable, sort: $sort)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomFieldDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._selectValues, _selectValues) &&
            (identical(other.isDeletable, isDeletable) ||
                other.isDeletable == isDeletable) &&
            (identical(other.sort, sort) || other.sort == sort));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, type,
      const DeepCollectionEquality().hash(_selectValues), isDeletable, sort);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomFieldDTOImplCopyWith<_$CustomFieldDTOImpl> get copyWith =>
      __$$CustomFieldDTOImplCopyWithImpl<_$CustomFieldDTOImpl>(
          this, _$identity);
}

abstract class _CustomFieldDTO extends CustomFieldDTO {
  const factory _CustomFieldDTO(
      {final int? id,
      required final String name,
      required final String type,
      final List<String>? selectValues,
      final bool? isDeletable,
      final int? sort}) = _$CustomFieldDTOImpl;
  const _CustomFieldDTO._() : super._();

  factory _CustomFieldDTO.fromJson(Map<String, dynamic> json) =
      _$CustomFieldDTOImpl.fromJson;

  @override
  int? get id;
  @override
  String get name;
  @override
  String get type;
  @override
  List<String>? get selectValues;
  @override
  bool? get isDeletable;
  @override
  int? get sort;
  @override
  @JsonKey(ignore: true)
  _$$CustomFieldDTOImplCopyWith<_$CustomFieldDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
