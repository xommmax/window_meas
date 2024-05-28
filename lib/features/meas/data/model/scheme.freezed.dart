// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scheme.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Scheme {
  List<(Offset, Offset)> get lines => throw _privateConstructorUsedError;
  List<Segment> get segments => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SchemeCopyWith<Scheme> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchemeCopyWith<$Res> {
  factory $SchemeCopyWith(Scheme value, $Res Function(Scheme) then) =
      _$SchemeCopyWithImpl<$Res, Scheme>;
  @useResult
  $Res call({List<(Offset, Offset)> lines, List<Segment> segments});
}

/// @nodoc
class _$SchemeCopyWithImpl<$Res, $Val extends Scheme>
    implements $SchemeCopyWith<$Res> {
  _$SchemeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lines = null,
    Object? segments = null,
  }) {
    return _then(_value.copyWith(
      lines: null == lines
          ? _value.lines
          : lines // ignore: cast_nullable_to_non_nullable
              as List<(Offset, Offset)>,
      segments: null == segments
          ? _value.segments
          : segments // ignore: cast_nullable_to_non_nullable
              as List<Segment>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SchemeImplCopyWith<$Res> implements $SchemeCopyWith<$Res> {
  factory _$$SchemeImplCopyWith(
          _$SchemeImpl value, $Res Function(_$SchemeImpl) then) =
      __$$SchemeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<(Offset, Offset)> lines, List<Segment> segments});
}

/// @nodoc
class __$$SchemeImplCopyWithImpl<$Res>
    extends _$SchemeCopyWithImpl<$Res, _$SchemeImpl>
    implements _$$SchemeImplCopyWith<$Res> {
  __$$SchemeImplCopyWithImpl(
      _$SchemeImpl _value, $Res Function(_$SchemeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lines = null,
    Object? segments = null,
  }) {
    return _then(_$SchemeImpl(
      lines: null == lines
          ? _value._lines
          : lines // ignore: cast_nullable_to_non_nullable
              as List<(Offset, Offset)>,
      segments: null == segments
          ? _value._segments
          : segments // ignore: cast_nullable_to_non_nullable
              as List<Segment>,
    ));
  }
}

/// @nodoc

class _$SchemeImpl extends _Scheme {
  const _$SchemeImpl(
      {required final List<(Offset, Offset)> lines,
      required final List<Segment> segments})
      : _lines = lines,
        _segments = segments,
        super._();

  final List<(Offset, Offset)> _lines;
  @override
  List<(Offset, Offset)> get lines {
    if (_lines is EqualUnmodifiableListView) return _lines;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lines);
  }

  final List<Segment> _segments;
  @override
  List<Segment> get segments {
    if (_segments is EqualUnmodifiableListView) return _segments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_segments);
  }

  @override
  String toString() {
    return 'Scheme(lines: $lines, segments: $segments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SchemeImpl &&
            const DeepCollectionEquality().equals(other._lines, _lines) &&
            const DeepCollectionEquality().equals(other._segments, _segments));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_lines),
      const DeepCollectionEquality().hash(_segments));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SchemeImplCopyWith<_$SchemeImpl> get copyWith =>
      __$$SchemeImplCopyWithImpl<_$SchemeImpl>(this, _$identity);
}

abstract class _Scheme extends Scheme {
  const factory _Scheme(
      {required final List<(Offset, Offset)> lines,
      required final List<Segment> segments}) = _$SchemeImpl;
  const _Scheme._() : super._();

  @override
  List<(Offset, Offset)> get lines;
  @override
  List<Segment> get segments;
  @override
  @JsonKey(ignore: true)
  _$$SchemeImplCopyWith<_$SchemeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
