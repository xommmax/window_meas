// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'arch.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Arch {
  Offset get p1 => throw _privateConstructorUsedError;
  Offset get p2 => throw _privateConstructorUsedError;
  Offset? get top => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ArchCopyWith<Arch> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArchCopyWith<$Res> {
  factory $ArchCopyWith(Arch value, $Res Function(Arch) then) =
      _$ArchCopyWithImpl<$Res, Arch>;
  @useResult
  $Res call({Offset p1, Offset p2, Offset? top});
}

/// @nodoc
class _$ArchCopyWithImpl<$Res, $Val extends Arch>
    implements $ArchCopyWith<$Res> {
  _$ArchCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? p1 = null,
    Object? p2 = null,
    Object? top = freezed,
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
      top: freezed == top
          ? _value.top
          : top // ignore: cast_nullable_to_non_nullable
              as Offset?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ArchImplCopyWith<$Res> implements $ArchCopyWith<$Res> {
  factory _$$ArchImplCopyWith(
          _$ArchImpl value, $Res Function(_$ArchImpl) then) =
      __$$ArchImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Offset p1, Offset p2, Offset? top});
}

/// @nodoc
class __$$ArchImplCopyWithImpl<$Res>
    extends _$ArchCopyWithImpl<$Res, _$ArchImpl>
    implements _$$ArchImplCopyWith<$Res> {
  __$$ArchImplCopyWithImpl(_$ArchImpl _value, $Res Function(_$ArchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? p1 = null,
    Object? p2 = null,
    Object? top = freezed,
  }) {
    return _then(_$ArchImpl(
      null == p1
          ? _value.p1
          : p1 // ignore: cast_nullable_to_non_nullable
              as Offset,
      null == p2
          ? _value.p2
          : p2 // ignore: cast_nullable_to_non_nullable
              as Offset,
      freezed == top
          ? _value.top
          : top // ignore: cast_nullable_to_non_nullable
              as Offset?,
    ));
  }
}

/// @nodoc

class _$ArchImpl extends _Arch {
  const _$ArchImpl(this.p1, this.p2, this.top) : super._();

  @override
  final Offset p1;
  @override
  final Offset p2;
  @override
  final Offset? top;

  @override
  String toString() {
    return 'Arch(p1: $p1, p2: $p2, top: $top)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArchImplCopyWith<_$ArchImpl> get copyWith =>
      __$$ArchImplCopyWithImpl<_$ArchImpl>(this, _$identity);
}

abstract class _Arch extends Arch {
  const factory _Arch(final Offset p1, final Offset p2, final Offset? top) =
      _$ArchImpl;
  const _Arch._() : super._();

  @override
  Offset get p1;
  @override
  Offset get p2;
  @override
  Offset? get top;
  @override
  @JsonKey(ignore: true)
  _$$ArchImplCopyWith<_$ArchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
