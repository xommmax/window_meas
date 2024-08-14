// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'connector.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Connector {
  ConnectorAngle get angle => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConnectorCopyWith<Connector> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectorCopyWith<$Res> {
  factory $ConnectorCopyWith(Connector value, $Res Function(Connector) then) =
      _$ConnectorCopyWithImpl<$Res, Connector>;
  @useResult
  $Res call({ConnectorAngle angle, String description, DateTime createdAt});
}

/// @nodoc
class _$ConnectorCopyWithImpl<$Res, $Val extends Connector>
    implements $ConnectorCopyWith<$Res> {
  _$ConnectorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? angle = null,
    Object? description = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      angle: null == angle
          ? _value.angle
          : angle // ignore: cast_nullable_to_non_nullable
              as ConnectorAngle,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConnectorImplCopyWith<$Res>
    implements $ConnectorCopyWith<$Res> {
  factory _$$ConnectorImplCopyWith(
          _$ConnectorImpl value, $Res Function(_$ConnectorImpl) then) =
      __$$ConnectorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ConnectorAngle angle, String description, DateTime createdAt});
}

/// @nodoc
class __$$ConnectorImplCopyWithImpl<$Res>
    extends _$ConnectorCopyWithImpl<$Res, _$ConnectorImpl>
    implements _$$ConnectorImplCopyWith<$Res> {
  __$$ConnectorImplCopyWithImpl(
      _$ConnectorImpl _value, $Res Function(_$ConnectorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? angle = null,
    Object? description = null,
    Object? createdAt = null,
  }) {
    return _then(_$ConnectorImpl(
      angle: null == angle
          ? _value.angle
          : angle // ignore: cast_nullable_to_non_nullable
              as ConnectorAngle,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$ConnectorImpl extends _Connector {
  const _$ConnectorImpl(
      {required this.angle, required this.description, required this.createdAt})
      : super._();

  @override
  final ConnectorAngle angle;
  @override
  final String description;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'Connector(angle: $angle, description: $description, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectorImpl &&
            (identical(other.angle, angle) || other.angle == angle) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, angle, description, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConnectorImplCopyWith<_$ConnectorImpl> get copyWith =>
      __$$ConnectorImplCopyWithImpl<_$ConnectorImpl>(this, _$identity);
}

abstract class _Connector extends Connector {
  const factory _Connector(
      {required final ConnectorAngle angle,
      required final String description,
      required final DateTime createdAt}) = _$ConnectorImpl;
  const _Connector._() : super._();

  @override
  ConnectorAngle get angle;
  @override
  String get description;
  @override
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$ConnectorImplCopyWith<_$ConnectorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
