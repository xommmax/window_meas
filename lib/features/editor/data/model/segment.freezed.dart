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
mixin _$SizeSegment {
  Offset get p1 => throw _privateConstructorUsedError;
  Offset get p2 => throw _privateConstructorUsedError;
  String? get size => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  SegmentDirection get direction => throw _privateConstructorUsedError;
  bool get isMain => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SizeSegmentCopyWith<SizeSegment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SizeSegmentCopyWith<$Res> {
  factory $SizeSegmentCopyWith(
          SizeSegment value, $Res Function(SizeSegment) then) =
      _$SizeSegmentCopyWithImpl<$Res, SizeSegment>;
  @useResult
  $Res call(
      {Offset p1,
      Offset p2,
      String? size,
      String? comment,
      SegmentDirection direction,
      bool isMain,
      int index});
}

/// @nodoc
class _$SizeSegmentCopyWithImpl<$Res, $Val extends SizeSegment>
    implements $SizeSegmentCopyWith<$Res> {
  _$SizeSegmentCopyWithImpl(this._value, this._then);

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
    Object? comment = freezed,
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
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
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
abstract class _$$SizeSegmentImplCopyWith<$Res>
    implements $SizeSegmentCopyWith<$Res> {
  factory _$$SizeSegmentImplCopyWith(
          _$SizeSegmentImpl value, $Res Function(_$SizeSegmentImpl) then) =
      __$$SizeSegmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Offset p1,
      Offset p2,
      String? size,
      String? comment,
      SegmentDirection direction,
      bool isMain,
      int index});
}

/// @nodoc
class __$$SizeSegmentImplCopyWithImpl<$Res>
    extends _$SizeSegmentCopyWithImpl<$Res, _$SizeSegmentImpl>
    implements _$$SizeSegmentImplCopyWith<$Res> {
  __$$SizeSegmentImplCopyWithImpl(
      _$SizeSegmentImpl _value, $Res Function(_$SizeSegmentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? p1 = null,
    Object? p2 = null,
    Object? size = freezed,
    Object? comment = freezed,
    Object? direction = null,
    Object? isMain = null,
    Object? index = null,
  }) {
    return _then(_$SizeSegmentImpl(
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
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
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

class _$SizeSegmentImpl extends _SizeSegment {
  const _$SizeSegmentImpl(
      {required this.p1,
      required this.p2,
      required this.size,
      required this.comment,
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
  final String? comment;
  @override
  final SegmentDirection direction;
  @override
  final bool isMain;
  @override
  final int index;

  @override
  String toString() {
    return 'SizeSegment(p1: $p1, p2: $p2, size: $size, comment: $comment, direction: $direction, isMain: $isMain, index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SizeSegmentImpl &&
            (identical(other.p1, p1) || other.p1 == p1) &&
            (identical(other.p2, p2) || other.p2 == p2) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.direction, direction) ||
                other.direction == direction) &&
            (identical(other.isMain, isMain) || other.isMain == isMain) &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, p1, p2, size, comment, direction, isMain, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SizeSegmentImplCopyWith<_$SizeSegmentImpl> get copyWith =>
      __$$SizeSegmentImplCopyWithImpl<_$SizeSegmentImpl>(this, _$identity);
}

abstract class _SizeSegment extends SizeSegment {
  const factory _SizeSegment(
      {required final Offset p1,
      required final Offset p2,
      required final String? size,
      required final String? comment,
      required final SegmentDirection direction,
      required final bool isMain,
      required final int index}) = _$SizeSegmentImpl;
  const _SizeSegment._() : super._();

  @override
  Offset get p1;
  @override
  Offset get p2;
  @override
  String? get size;
  @override
  String? get comment;
  @override
  SegmentDirection get direction;
  @override
  bool get isMain;
  @override
  int get index;
  @override
  @JsonKey(ignore: true)
  _$$SizeSegmentImplCopyWith<_$SizeSegmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
