// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meas_details_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MeasurementDetailsState {
  Measurement? get measurement => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MeasurementDetailsStateCopyWith<MeasurementDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeasurementDetailsStateCopyWith<$Res> {
  factory $MeasurementDetailsStateCopyWith(MeasurementDetailsState value,
          $Res Function(MeasurementDetailsState) then) =
      _$MeasurementDetailsStateCopyWithImpl<$Res, MeasurementDetailsState>;
  @useResult
  $Res call({Measurement? measurement});

  $MeasurementCopyWith<$Res>? get measurement;
}

/// @nodoc
class _$MeasurementDetailsStateCopyWithImpl<$Res,
        $Val extends MeasurementDetailsState>
    implements $MeasurementDetailsStateCopyWith<$Res> {
  _$MeasurementDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? measurement = freezed,
  }) {
    return _then(_value.copyWith(
      measurement: freezed == measurement
          ? _value.measurement
          : measurement // ignore: cast_nullable_to_non_nullable
              as Measurement?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MeasurementCopyWith<$Res>? get measurement {
    if (_value.measurement == null) {
      return null;
    }

    return $MeasurementCopyWith<$Res>(_value.measurement!, (value) {
      return _then(_value.copyWith(measurement: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MeasurementDetailsStateImplCopyWith<$Res>
    implements $MeasurementDetailsStateCopyWith<$Res> {
  factory _$$MeasurementDetailsStateImplCopyWith(
          _$MeasurementDetailsStateImpl value,
          $Res Function(_$MeasurementDetailsStateImpl) then) =
      __$$MeasurementDetailsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Measurement? measurement});

  @override
  $MeasurementCopyWith<$Res>? get measurement;
}

/// @nodoc
class __$$MeasurementDetailsStateImplCopyWithImpl<$Res>
    extends _$MeasurementDetailsStateCopyWithImpl<$Res,
        _$MeasurementDetailsStateImpl>
    implements _$$MeasurementDetailsStateImplCopyWith<$Res> {
  __$$MeasurementDetailsStateImplCopyWithImpl(
      _$MeasurementDetailsStateImpl _value,
      $Res Function(_$MeasurementDetailsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? measurement = freezed,
  }) {
    return _then(_$MeasurementDetailsStateImpl(
      measurement: freezed == measurement
          ? _value.measurement
          : measurement // ignore: cast_nullable_to_non_nullable
              as Measurement?,
    ));
  }
}

/// @nodoc

class _$MeasurementDetailsStateImpl extends _MeasurementDetailsState {
  const _$MeasurementDetailsStateImpl({required this.measurement}) : super._();

  @override
  final Measurement? measurement;

  @override
  String toString() {
    return 'MeasurementDetailsState(measurement: $measurement)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeasurementDetailsStateImpl &&
            (identical(other.measurement, measurement) ||
                other.measurement == measurement));
  }

  @override
  int get hashCode => Object.hash(runtimeType, measurement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MeasurementDetailsStateImplCopyWith<_$MeasurementDetailsStateImpl>
      get copyWith => __$$MeasurementDetailsStateImplCopyWithImpl<
          _$MeasurementDetailsStateImpl>(this, _$identity);
}

abstract class _MeasurementDetailsState extends MeasurementDetailsState {
  const factory _MeasurementDetailsState(
          {required final Measurement? measurement}) =
      _$MeasurementDetailsStateImpl;
  const _MeasurementDetailsState._() : super._();

  @override
  Measurement? get measurement;
  @override
  @JsonKey(ignore: true)
  _$$MeasurementDetailsStateImplCopyWith<_$MeasurementDetailsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
