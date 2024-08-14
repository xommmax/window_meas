// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expander.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Expander {
  ExpanderWidth get width => throw _privateConstructorUsedError;
  String get length => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExpanderCopyWith<Expander> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpanderCopyWith<$Res> {
  factory $ExpanderCopyWith(Expander value, $Res Function(Expander) then) =
      _$ExpanderCopyWithImpl<$Res, Expander>;
  @useResult
  $Res call({ExpanderWidth width, String length, DateTime createdAt});
}

/// @nodoc
class _$ExpanderCopyWithImpl<$Res, $Val extends Expander>
    implements $ExpanderCopyWith<$Res> {
  _$ExpanderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = null,
    Object? length = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as ExpanderWidth,
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExpanderImplCopyWith<$Res>
    implements $ExpanderCopyWith<$Res> {
  factory _$$ExpanderImplCopyWith(
          _$ExpanderImpl value, $Res Function(_$ExpanderImpl) then) =
      __$$ExpanderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ExpanderWidth width, String length, DateTime createdAt});
}

/// @nodoc
class __$$ExpanderImplCopyWithImpl<$Res>
    extends _$ExpanderCopyWithImpl<$Res, _$ExpanderImpl>
    implements _$$ExpanderImplCopyWith<$Res> {
  __$$ExpanderImplCopyWithImpl(
      _$ExpanderImpl _value, $Res Function(_$ExpanderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = null,
    Object? length = null,
    Object? createdAt = null,
  }) {
    return _then(_$ExpanderImpl(
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as ExpanderWidth,
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$ExpanderImpl extends _Expander {
  const _$ExpanderImpl(
      {required this.width, required this.length, required this.createdAt})
      : super._();

  @override
  final ExpanderWidth width;
  @override
  final String length;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'Expander(width: $width, length: $length, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpanderImpl &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.length, length) || other.length == length) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, width, length, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExpanderImplCopyWith<_$ExpanderImpl> get copyWith =>
      __$$ExpanderImplCopyWithImpl<_$ExpanderImpl>(this, _$identity);
}

abstract class _Expander extends Expander {
  const factory _Expander(
      {required final ExpanderWidth width,
      required final String length,
      required final DateTime createdAt}) = _$ExpanderImpl;
  const _Expander._() : super._();

  @override
  ExpanderWidth get width;
  @override
  String get length;
  @override
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$ExpanderImplCopyWith<_$ExpanderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
