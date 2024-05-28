// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'line.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Line {
  Offset get p1 => throw _privateConstructorUsedError;
  Offset get p2 => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LineCopyWith<Line> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LineCopyWith<$Res> {
  factory $LineCopyWith(Line value, $Res Function(Line) then) =
      _$LineCopyWithImpl<$Res, Line>;
  @useResult
  $Res call({Offset p1, Offset p2});
}

/// @nodoc
class _$LineCopyWithImpl<$Res, $Val extends Line>
    implements $LineCopyWith<$Res> {
  _$LineCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? p1 = null,
    Object? p2 = null,
  }) {
    return _then(_value.copyWith(
      p1: null == p1
          ? _value.p1
          : p1 // ignore: cast_nullable_to_non_nullable
              as Offset,
      p2: null == p2
          ? _value.p2
          : p2 // ignore: cast_nullable_to_non_nullable
              as Offset,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LineImplCopyWith<$Res> implements $LineCopyWith<$Res> {
  factory _$$LineImplCopyWith(
          _$LineImpl value, $Res Function(_$LineImpl) then) =
      __$$LineImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Offset p1, Offset p2});
}

/// @nodoc
class __$$LineImplCopyWithImpl<$Res>
    extends _$LineCopyWithImpl<$Res, _$LineImpl>
    implements _$$LineImplCopyWith<$Res> {
  __$$LineImplCopyWithImpl(_$LineImpl _value, $Res Function(_$LineImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? p1 = null,
    Object? p2 = null,
  }) {
    return _then(_$LineImpl(
      null == p1
          ? _value.p1
          : p1 // ignore: cast_nullable_to_non_nullable
              as Offset,
      null == p2
          ? _value.p2
          : p2 // ignore: cast_nullable_to_non_nullable
              as Offset,
    ));
  }
}

/// @nodoc

class _$LineImpl extends _Line {
  const _$LineImpl(this.p1, this.p2) : super._();

  @override
  final Offset p1;
  @override
  final Offset p2;

  @override
  String toString() {
    return 'Line(p1: $p1, p2: $p2)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LineImplCopyWith<_$LineImpl> get copyWith =>
      __$$LineImplCopyWithImpl<_$LineImpl>(this, _$identity);
}

abstract class _Line extends Line {
  const factory _Line(final Offset p1, final Offset p2) = _$LineImpl;
  const _Line._() : super._();

  @override
  Offset get p1;
  @override
  Offset get p2;
  @override
  @JsonKey(ignore: true)
  _$$LineImplCopyWith<_$LineImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
