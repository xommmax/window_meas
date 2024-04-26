// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meas_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MeasurementListState {
  List<Measurement> get measurements => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MeasurementListStateCopyWith<MeasurementListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeasurementListStateCopyWith<$Res> {
  factory $MeasurementListStateCopyWith(MeasurementListState value,
          $Res Function(MeasurementListState) then) =
      _$MeasurementListStateCopyWithImpl<$Res, MeasurementListState>;
  @useResult
  $Res call({List<Measurement> measurements});
}

/// @nodoc
class _$MeasurementListStateCopyWithImpl<$Res,
        $Val extends MeasurementListState>
    implements $MeasurementListStateCopyWith<$Res> {
  _$MeasurementListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? measurements = null,
  }) {
    return _then(_value.copyWith(
      measurements: null == measurements
          ? _value.measurements
          : measurements // ignore: cast_nullable_to_non_nullable
              as List<Measurement>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MeasurementListStateImplCopyWith<$Res>
    implements $MeasurementListStateCopyWith<$Res> {
  factory _$$MeasurementListStateImplCopyWith(_$MeasurementListStateImpl value,
          $Res Function(_$MeasurementListStateImpl) then) =
      __$$MeasurementListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Measurement> measurements});
}

/// @nodoc
class __$$MeasurementListStateImplCopyWithImpl<$Res>
    extends _$MeasurementListStateCopyWithImpl<$Res, _$MeasurementListStateImpl>
    implements _$$MeasurementListStateImplCopyWith<$Res> {
  __$$MeasurementListStateImplCopyWithImpl(_$MeasurementListStateImpl _value,
      $Res Function(_$MeasurementListStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? measurements = null,
  }) {
    return _then(_$MeasurementListStateImpl(
      measurements: null == measurements
          ? _value._measurements
          : measurements // ignore: cast_nullable_to_non_nullable
              as List<Measurement>,
    ));
  }
}

/// @nodoc

class _$MeasurementListStateImpl implements _MeasurementListState {
  const _$MeasurementListStateImpl(
      {final List<Measurement> measurements = const []})
      : _measurements = measurements;

  final List<Measurement> _measurements;
  @override
  @JsonKey()
  List<Measurement> get measurements {
    if (_measurements is EqualUnmodifiableListView) return _measurements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_measurements);
  }

  @override
  String toString() {
    return 'MeasurementListState(measurements: $measurements)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeasurementListStateImpl &&
            const DeepCollectionEquality()
                .equals(other._measurements, _measurements));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_measurements));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MeasurementListStateImplCopyWith<_$MeasurementListStateImpl>
      get copyWith =>
          __$$MeasurementListStateImplCopyWithImpl<_$MeasurementListStateImpl>(
              this, _$identity);
}

abstract class _MeasurementListState implements MeasurementListState {
  const factory _MeasurementListState({final List<Measurement> measurements}) =
      _$MeasurementListStateImpl;

  @override
  List<Measurement> get measurements;
  @override
  @JsonKey(ignore: true)
  _$$MeasurementListStateImplCopyWith<_$MeasurementListStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
