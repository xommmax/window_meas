// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filling_type_record.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FillingTypeRecord {
  FillingType get fillingType => throw _privateConstructorUsedError;
  Polygon get polygon => throw _privateConstructorUsedError;
  bool get sateen => throw _privateConstructorUsedError;
  bool get mosquito => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FillingTypeRecordCopyWith<FillingTypeRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FillingTypeRecordCopyWith<$Res> {
  factory $FillingTypeRecordCopyWith(
          FillingTypeRecord value, $Res Function(FillingTypeRecord) then) =
      _$FillingTypeRecordCopyWithImpl<$Res, FillingTypeRecord>;
  @useResult
  $Res call(
      {FillingType fillingType, Polygon polygon, bool sateen, bool mosquito});

  $PolygonCopyWith<$Res> get polygon;
}

/// @nodoc
class _$FillingTypeRecordCopyWithImpl<$Res, $Val extends FillingTypeRecord>
    implements $FillingTypeRecordCopyWith<$Res> {
  _$FillingTypeRecordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fillingType = null,
    Object? polygon = null,
    Object? sateen = null,
    Object? mosquito = null,
  }) {
    return _then(_value.copyWith(
      fillingType: null == fillingType
          ? _value.fillingType
          : fillingType // ignore: cast_nullable_to_non_nullable
              as FillingType,
      polygon: null == polygon
          ? _value.polygon
          : polygon // ignore: cast_nullable_to_non_nullable
              as Polygon,
      sateen: null == sateen
          ? _value.sateen
          : sateen // ignore: cast_nullable_to_non_nullable
              as bool,
      mosquito: null == mosquito
          ? _value.mosquito
          : mosquito // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PolygonCopyWith<$Res> get polygon {
    return $PolygonCopyWith<$Res>(_value.polygon, (value) {
      return _then(_value.copyWith(polygon: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FillingTypeRecordImplCopyWith<$Res>
    implements $FillingTypeRecordCopyWith<$Res> {
  factory _$$FillingTypeRecordImplCopyWith(_$FillingTypeRecordImpl value,
          $Res Function(_$FillingTypeRecordImpl) then) =
      __$$FillingTypeRecordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FillingType fillingType, Polygon polygon, bool sateen, bool mosquito});

  @override
  $PolygonCopyWith<$Res> get polygon;
}

/// @nodoc
class __$$FillingTypeRecordImplCopyWithImpl<$Res>
    extends _$FillingTypeRecordCopyWithImpl<$Res, _$FillingTypeRecordImpl>
    implements _$$FillingTypeRecordImplCopyWith<$Res> {
  __$$FillingTypeRecordImplCopyWithImpl(_$FillingTypeRecordImpl _value,
      $Res Function(_$FillingTypeRecordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fillingType = null,
    Object? polygon = null,
    Object? sateen = null,
    Object? mosquito = null,
  }) {
    return _then(_$FillingTypeRecordImpl(
      fillingType: null == fillingType
          ? _value.fillingType
          : fillingType // ignore: cast_nullable_to_non_nullable
              as FillingType,
      polygon: null == polygon
          ? _value.polygon
          : polygon // ignore: cast_nullable_to_non_nullable
              as Polygon,
      sateen: null == sateen
          ? _value.sateen
          : sateen // ignore: cast_nullable_to_non_nullable
              as bool,
      mosquito: null == mosquito
          ? _value.mosquito
          : mosquito // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$FillingTypeRecordImpl extends _FillingTypeRecord {
  const _$FillingTypeRecordImpl(
      {required this.fillingType,
      required this.polygon,
      required this.sateen,
      required this.mosquito})
      : super._();

  @override
  final FillingType fillingType;
  @override
  final Polygon polygon;
  @override
  final bool sateen;
  @override
  final bool mosquito;

  @override
  String toString() {
    return 'FillingTypeRecord(fillingType: $fillingType, polygon: $polygon, sateen: $sateen, mosquito: $mosquito)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FillingTypeRecordImpl &&
            (identical(other.fillingType, fillingType) ||
                other.fillingType == fillingType) &&
            (identical(other.polygon, polygon) || other.polygon == polygon) &&
            (identical(other.sateen, sateen) || other.sateen == sateen) &&
            (identical(other.mosquito, mosquito) ||
                other.mosquito == mosquito));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, fillingType, polygon, sateen, mosquito);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FillingTypeRecordImplCopyWith<_$FillingTypeRecordImpl> get copyWith =>
      __$$FillingTypeRecordImplCopyWithImpl<_$FillingTypeRecordImpl>(
          this, _$identity);
}

abstract class _FillingTypeRecord extends FillingTypeRecord {
  const factory _FillingTypeRecord(
      {required final FillingType fillingType,
      required final Polygon polygon,
      required final bool sateen,
      required final bool mosquito}) = _$FillingTypeRecordImpl;
  const _FillingTypeRecord._() : super._();

  @override
  FillingType get fillingType;
  @override
  Polygon get polygon;
  @override
  bool get sateen;
  @override
  bool get mosquito;
  @override
  @JsonKey(ignore: true)
  _$$FillingTypeRecordImplCopyWith<_$FillingTypeRecordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
