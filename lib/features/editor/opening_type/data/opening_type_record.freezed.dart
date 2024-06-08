// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'opening_type_record.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OpeningTypeRecord {
  OpeningType get openingType => throw _privateConstructorUsedError;
  List<Polygon> get polygons => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OpeningTypeRecordCopyWith<OpeningTypeRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpeningTypeRecordCopyWith<$Res> {
  factory $OpeningTypeRecordCopyWith(
          OpeningTypeRecord value, $Res Function(OpeningTypeRecord) then) =
      _$OpeningTypeRecordCopyWithImpl<$Res, OpeningTypeRecord>;
  @useResult
  $Res call({OpeningType openingType, List<Polygon> polygons});
}

/// @nodoc
class _$OpeningTypeRecordCopyWithImpl<$Res, $Val extends OpeningTypeRecord>
    implements $OpeningTypeRecordCopyWith<$Res> {
  _$OpeningTypeRecordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? openingType = null,
    Object? polygons = null,
  }) {
    return _then(_value.copyWith(
      openingType: null == openingType
          ? _value.openingType
          : openingType // ignore: cast_nullable_to_non_nullable
              as OpeningType,
      polygons: null == polygons
          ? _value.polygons
          : polygons // ignore: cast_nullable_to_non_nullable
              as List<Polygon>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OpeningTypeRecordImplCopyWith<$Res>
    implements $OpeningTypeRecordCopyWith<$Res> {
  factory _$$OpeningTypeRecordImplCopyWith(_$OpeningTypeRecordImpl value,
          $Res Function(_$OpeningTypeRecordImpl) then) =
      __$$OpeningTypeRecordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({OpeningType openingType, List<Polygon> polygons});
}

/// @nodoc
class __$$OpeningTypeRecordImplCopyWithImpl<$Res>
    extends _$OpeningTypeRecordCopyWithImpl<$Res, _$OpeningTypeRecordImpl>
    implements _$$OpeningTypeRecordImplCopyWith<$Res> {
  __$$OpeningTypeRecordImplCopyWithImpl(_$OpeningTypeRecordImpl _value,
      $Res Function(_$OpeningTypeRecordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? openingType = null,
    Object? polygons = null,
  }) {
    return _then(_$OpeningTypeRecordImpl(
      openingType: null == openingType
          ? _value.openingType
          : openingType // ignore: cast_nullable_to_non_nullable
              as OpeningType,
      polygons: null == polygons
          ? _value._polygons
          : polygons // ignore: cast_nullable_to_non_nullable
              as List<Polygon>,
    ));
  }
}

/// @nodoc

class _$OpeningTypeRecordImpl extends _OpeningTypeRecord {
  const _$OpeningTypeRecordImpl(
      {required this.openingType, required final List<Polygon> polygons})
      : _polygons = polygons,
        super._();

  @override
  final OpeningType openingType;
  final List<Polygon> _polygons;
  @override
  List<Polygon> get polygons {
    if (_polygons is EqualUnmodifiableListView) return _polygons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_polygons);
  }

  @override
  String toString() {
    return 'OpeningTypeRecord(openingType: $openingType, polygons: $polygons)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpeningTypeRecordImpl &&
            (identical(other.openingType, openingType) ||
                other.openingType == openingType) &&
            const DeepCollectionEquality().equals(other._polygons, _polygons));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, openingType, const DeepCollectionEquality().hash(_polygons));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OpeningTypeRecordImplCopyWith<_$OpeningTypeRecordImpl> get copyWith =>
      __$$OpeningTypeRecordImplCopyWithImpl<_$OpeningTypeRecordImpl>(
          this, _$identity);
}

abstract class _OpeningTypeRecord extends OpeningTypeRecord {
  const factory _OpeningTypeRecord(
      {required final OpeningType openingType,
      required final List<Polygon> polygons}) = _$OpeningTypeRecordImpl;
  const _OpeningTypeRecord._() : super._();

  @override
  OpeningType get openingType;
  @override
  List<Polygon> get polygons;
  @override
  @JsonKey(ignore: true)
  _$$OpeningTypeRecordImplCopyWith<_$OpeningTypeRecordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
