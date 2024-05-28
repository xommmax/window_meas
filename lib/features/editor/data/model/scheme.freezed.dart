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
  List<Line> get lines => throw _privateConstructorUsedError;
  List<SizeSegment> get sizeSegments => throw _privateConstructorUsedError;
  List<Polygon> get polygons => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SchemeCopyWith<Scheme> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchemeCopyWith<$Res> {
  factory $SchemeCopyWith(Scheme value, $Res Function(Scheme) then) =
      _$SchemeCopyWithImpl<$Res, Scheme>;
  @useResult
  $Res call(
      {List<Line> lines,
      List<SizeSegment> sizeSegments,
      List<Polygon> polygons});
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
    Object? sizeSegments = null,
    Object? polygons = null,
  }) {
    return _then(_value.copyWith(
      lines: null == lines
          ? _value.lines
          : lines // ignore: cast_nullable_to_non_nullable
              as List<Line>,
      sizeSegments: null == sizeSegments
          ? _value.sizeSegments
          : sizeSegments // ignore: cast_nullable_to_non_nullable
              as List<SizeSegment>,
      polygons: null == polygons
          ? _value.polygons
          : polygons // ignore: cast_nullable_to_non_nullable
              as List<Polygon>,
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
  $Res call(
      {List<Line> lines,
      List<SizeSegment> sizeSegments,
      List<Polygon> polygons});
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
    Object? sizeSegments = null,
    Object? polygons = null,
  }) {
    return _then(_$SchemeImpl(
      lines: null == lines
          ? _value._lines
          : lines // ignore: cast_nullable_to_non_nullable
              as List<Line>,
      sizeSegments: null == sizeSegments
          ? _value._sizeSegments
          : sizeSegments // ignore: cast_nullable_to_non_nullable
              as List<SizeSegment>,
      polygons: null == polygons
          ? _value._polygons
          : polygons // ignore: cast_nullable_to_non_nullable
              as List<Polygon>,
    ));
  }
}

/// @nodoc

class _$SchemeImpl extends _Scheme {
  const _$SchemeImpl(
      {required final List<Line> lines,
      required final List<SizeSegment> sizeSegments,
      required final List<Polygon> polygons})
      : _lines = lines,
        _sizeSegments = sizeSegments,
        _polygons = polygons,
        super._();

  final List<Line> _lines;
  @override
  List<Line> get lines {
    if (_lines is EqualUnmodifiableListView) return _lines;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lines);
  }

  final List<SizeSegment> _sizeSegments;
  @override
  List<SizeSegment> get sizeSegments {
    if (_sizeSegments is EqualUnmodifiableListView) return _sizeSegments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sizeSegments);
  }

  final List<Polygon> _polygons;
  @override
  List<Polygon> get polygons {
    if (_polygons is EqualUnmodifiableListView) return _polygons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_polygons);
  }

  @override
  String toString() {
    return 'Scheme(lines: $lines, sizeSegments: $sizeSegments, polygons: $polygons)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SchemeImpl &&
            const DeepCollectionEquality().equals(other._lines, _lines) &&
            const DeepCollectionEquality()
                .equals(other._sizeSegments, _sizeSegments) &&
            const DeepCollectionEquality().equals(other._polygons, _polygons));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_lines),
      const DeepCollectionEquality().hash(_sizeSegments),
      const DeepCollectionEquality().hash(_polygons));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SchemeImplCopyWith<_$SchemeImpl> get copyWith =>
      __$$SchemeImplCopyWithImpl<_$SchemeImpl>(this, _$identity);
}

abstract class _Scheme extends Scheme {
  const factory _Scheme(
      {required final List<Line> lines,
      required final List<SizeSegment> sizeSegments,
      required final List<Polygon> polygons}) = _$SchemeImpl;
  const _Scheme._() : super._();

  @override
  List<Line> get lines;
  @override
  List<SizeSegment> get sizeSegments;
  @override
  List<Polygon> get polygons;
  @override
  @JsonKey(ignore: true)
  _$$SchemeImplCopyWith<_$SchemeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
