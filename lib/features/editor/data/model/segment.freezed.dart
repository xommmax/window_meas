// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'segment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Segment {
  Offset get p1 => throw _privateConstructorUsedError;
  Offset get p2 => throw _privateConstructorUsedError;
  String? get size => throw _privateConstructorUsedError;
  SegmentDirection get direction => throw _privateConstructorUsedError;
  bool get isMain => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SegmentCopyWith<Segment> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SegmentCopyWith<$Res> {
  factory $SegmentCopyWith(Segment value, $Res Function(Segment) then) =
      _$SegmentCopyWithImpl<$Res, Segment>;
  @useResult
  $Res call(
      {Offset p1,
      Offset p2,
      String? size,
      SegmentDirection direction,
      bool isMain,
      int index});
}

/// @nodoc
class _$SegmentCopyWithImpl<$Res, $Val extends Segment>
    implements $SegmentCopyWith<$Res> {
  _$SegmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? p1 = null,
    Object? p2 = null,
    Object? size = freezed,
    Object? direction = null,
    Object? isMain = null,
    Object? index = null,
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
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String?,
      direction: null == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as SegmentDirection,
      isMain: null == isMain
          ? _value.isMain
          : isMain // ignore: cast_nullable_to_non_nullable
              as bool,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SegmentImplCopyWith<$Res> implements $SegmentCopyWith<$Res> {
  factory _$$SegmentImplCopyWith(
          _$SegmentImpl value, $Res Function(_$SegmentImpl) then) =
      __$$SegmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Offset p1,
      Offset p2,
      String? size,
      SegmentDirection direction,
      bool isMain,
      int index});
}

/// @nodoc
class __$$SegmentImplCopyWithImpl<$Res>
    extends _$SegmentCopyWithImpl<$Res, _$SegmentImpl>
    implements _$$SegmentImplCopyWith<$Res> {
  __$$SegmentImplCopyWithImpl(
      _$SegmentImpl _value, $Res Function(_$SegmentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? p1 = null,
    Object? p2 = null,
    Object? size = freezed,
    Object? direction = null,
    Object? isMain = null,
    Object? index = null,
  }) {
    return _then(_$SegmentImpl(
      p1: null == p1
          ? _value.p1
          : p1 // ignore: cast_nullable_to_non_nullable
              as Offset,
      p2: null == p2
          ? _value.p2
          : p2 // ignore: cast_nullable_to_non_nullable
              as Offset,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String?,
      direction: null == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as SegmentDirection,
      isMain: null == isMain
          ? _value.isMain
          : isMain // ignore: cast_nullable_to_non_nullable
              as bool,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SegmentImpl extends _Segment {
  const _$SegmentImpl(
      {required this.p1,
      required this.p2,
      required this.size,
      required this.direction,
      required this.isMain,
      required this.index})
      : super._();

  @override
  final Offset p1;
  @override
  final Offset p2;
  @override
  final String? size;
  @override
  final SegmentDirection direction;
  @override
  final bool isMain;
  @override
  final int index;

  @override
  String toString() {
    return 'Segment(p1: $p1, p2: $p2, size: $size, direction: $direction, isMain: $isMain, index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SegmentImpl &&
            (identical(other.p1, p1) || other.p1 == p1) &&
            (identical(other.p2, p2) || other.p2 == p2) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.direction, direction) ||
                other.direction == direction) &&
            (identical(other.isMain, isMain) || other.isMain == isMain) &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, p1, p2, size, direction, isMain, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SegmentImplCopyWith<_$SegmentImpl> get copyWith =>
      __$$SegmentImplCopyWithImpl<_$SegmentImpl>(this, _$identity);
}

abstract class _Segment extends Segment {
  const factory _Segment(
      {required final Offset p1,
      required final Offset p2,
      required final String? size,
      required final SegmentDirection direction,
      required final bool isMain,
      required final int index}) = _$SegmentImpl;
  const _Segment._() : super._();

  @override
  Offset get p1;
  @override
  Offset get p2;
  @override
  String? get size;
  @override
  SegmentDirection get direction;
  @override
  bool get isMain;
  @override
  int get index;
  @override
  @JsonKey(ignore: true)
  _$$SegmentImplCopyWith<_$SegmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
