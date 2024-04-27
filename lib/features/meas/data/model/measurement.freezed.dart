// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'measurement.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Measurement {
  String get id => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  String? get clientName => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  int? get innerId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MeasurementCopyWith<Measurement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeasurementCopyWith<$Res> {
  factory $MeasurementCopyWith(
          Measurement value, $Res Function(Measurement) then) =
      _$MeasurementCopyWithImpl<$Res, Measurement>;
  @useResult
  $Res call(
      {String id,
      DateTime date,
      String? clientName,
      String? address,
      int? innerId});
}

/// @nodoc
class _$MeasurementCopyWithImpl<$Res, $Val extends Measurement>
    implements $MeasurementCopyWith<$Res> {
  _$MeasurementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? date = null,
    Object? clientName = freezed,
    Object? address = freezed,
    Object? innerId = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      clientName: freezed == clientName
          ? _value.clientName
          : clientName // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      innerId: freezed == innerId
          ? _value.innerId
          : innerId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MeasurementImplCopyWith<$Res>
    implements $MeasurementCopyWith<$Res> {
  factory _$$MeasurementImplCopyWith(
          _$MeasurementImpl value, $Res Function(_$MeasurementImpl) then) =
      __$$MeasurementImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime date,
      String? clientName,
      String? address,
      int? innerId});
}

/// @nodoc
class __$$MeasurementImplCopyWithImpl<$Res>
    extends _$MeasurementCopyWithImpl<$Res, _$MeasurementImpl>
    implements _$$MeasurementImplCopyWith<$Res> {
  __$$MeasurementImplCopyWithImpl(
      _$MeasurementImpl _value, $Res Function(_$MeasurementImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? date = null,
    Object? clientName = freezed,
    Object? address = freezed,
    Object? innerId = freezed,
  }) {
    return _then(_$MeasurementImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      clientName: freezed == clientName
          ? _value.clientName
          : clientName // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      innerId: freezed == innerId
          ? _value.innerId
          : innerId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$MeasurementImpl extends _Measurement {
  const _$MeasurementImpl(
      {required this.id,
      required this.date,
      this.clientName,
      this.address,
      this.innerId})
      : super._();

  @override
  final String id;
  @override
  final DateTime date;
  @override
  final String? clientName;
  @override
  final String? address;
  @override
  final int? innerId;

  @override
  String toString() {
    return 'Measurement(id: $id, date: $date, clientName: $clientName, address: $address, innerId: $innerId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeasurementImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.clientName, clientName) ||
                other.clientName == clientName) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.innerId, innerId) || other.innerId == innerId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, date, clientName, address, innerId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MeasurementImplCopyWith<_$MeasurementImpl> get copyWith =>
      __$$MeasurementImplCopyWithImpl<_$MeasurementImpl>(this, _$identity);
}

abstract class _Measurement extends Measurement {
  const factory _Measurement(
      {required final String id,
      required final DateTime date,
      final String? clientName,
      final String? address,
      final int? innerId}) = _$MeasurementImpl;
  const _Measurement._() : super._();

  @override
  String get id;
  @override
  DateTime get date;
  @override
  String? get clientName;
  @override
  String? get address;
  @override
  int? get innerId;
  @override
  @JsonKey(ignore: true)
  _$$MeasurementImplCopyWith<_$MeasurementImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
