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
  String get id => throw _privateConstructorUsedError;
  List<Line> get lines => throw _privateConstructorUsedError;
  List<SizeSegment> get sizeSegments => throw _privateConstructorUsedError;
  List<Polygon> get polygons => throw _privateConstructorUsedError;
  List<OpeningTypeRecord> get openingTypes =>
      throw _privateConstructorUsedError;
  List<FillingTypeRecord> get fillingTypes =>
      throw _privateConstructorUsedError;
  List<Arch> get arches => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SchemeCopyWith<Scheme> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchemeCopyWith<$Res> {
  factory $SchemeCopyWith(Scheme value, $Res Function(Scheme) then) =
      _$SchemeCopyWithImpl<$Res, Scheme>;
  @useResult
  $Res call(
      {String id,
      List<Line> lines,
      List<SizeSegment> sizeSegments,
      List<Polygon> polygons,
      List<OpeningTypeRecord> openingTypes,
      List<FillingTypeRecord> fillingTypes,
      List<Arch> arches});
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
    Object? id = null,
    Object? lines = null,
    Object? sizeSegments = null,
    Object? polygons = null,
    Object? openingTypes = null,
    Object? fillingTypes = null,
    Object? arches = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
      openingTypes: null == openingTypes
          ? _value.openingTypes
          : openingTypes // ignore: cast_nullable_to_non_nullable
              as List<OpeningTypeRecord>,
      fillingTypes: null == fillingTypes
          ? _value.fillingTypes
          : fillingTypes // ignore: cast_nullable_to_non_nullable
              as List<FillingTypeRecord>,
      arches: null == arches
          ? _value.arches
          : arches // ignore: cast_nullable_to_non_nullable
              as List<Arch>,
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
      {String id,
      List<Line> lines,
      List<SizeSegment> sizeSegments,
      List<Polygon> polygons,
      List<OpeningTypeRecord> openingTypes,
      List<FillingTypeRecord> fillingTypes,
      List<Arch> arches});
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
    Object? id = null,
    Object? lines = null,
    Object? sizeSegments = null,
    Object? polygons = null,
    Object? openingTypes = null,
    Object? fillingTypes = null,
    Object? arches = null,
  }) {
    return _then(_$SchemeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
      openingTypes: null == openingTypes
          ? _value._openingTypes
          : openingTypes // ignore: cast_nullable_to_non_nullable
              as List<OpeningTypeRecord>,
      fillingTypes: null == fillingTypes
          ? _value._fillingTypes
          : fillingTypes // ignore: cast_nullable_to_non_nullable
              as List<FillingTypeRecord>,
      arches: null == arches
          ? _value._arches
          : arches // ignore: cast_nullable_to_non_nullable
              as List<Arch>,
    ));
  }
}

/// @nodoc

class _$SchemeImpl extends _Scheme {
  const _$SchemeImpl(
      {required this.id,
      required final List<Line> lines,
      required final List<SizeSegment> sizeSegments,
      required final List<Polygon> polygons,
      required final List<OpeningTypeRecord> openingTypes,
      required final List<FillingTypeRecord> fillingTypes,
      required final List<Arch> arches})
      : _lines = lines,
        _sizeSegments = sizeSegments,
        _polygons = polygons,
        _openingTypes = openingTypes,
        _fillingTypes = fillingTypes,
        _arches = arches,
        super._();

  @override
  final String id;
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

  final List<OpeningTypeRecord> _openingTypes;
  @override
  List<OpeningTypeRecord> get openingTypes {
    if (_openingTypes is EqualUnmodifiableListView) return _openingTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_openingTypes);
  }

  final List<FillingTypeRecord> _fillingTypes;
  @override
  List<FillingTypeRecord> get fillingTypes {
    if (_fillingTypes is EqualUnmodifiableListView) return _fillingTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fillingTypes);
  }

  final List<Arch> _arches;
  @override
  List<Arch> get arches {
    if (_arches is EqualUnmodifiableListView) return _arches;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_arches);
  }

  @override
  String toString() {
    return 'Scheme(id: $id, lines: $lines, sizeSegments: $sizeSegments, polygons: $polygons, openingTypes: $openingTypes, fillingTypes: $fillingTypes, arches: $arches)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SchemeImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._lines, _lines) &&
            const DeepCollectionEquality()
                .equals(other._sizeSegments, _sizeSegments) &&
            const DeepCollectionEquality().equals(other._polygons, _polygons) &&
            const DeepCollectionEquality()
                .equals(other._openingTypes, _openingTypes) &&
            const DeepCollectionEquality()
                .equals(other._fillingTypes, _fillingTypes) &&
            const DeepCollectionEquality().equals(other._arches, _arches));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_lines),
      const DeepCollectionEquality().hash(_sizeSegments),
      const DeepCollectionEquality().hash(_polygons),
      const DeepCollectionEquality().hash(_openingTypes),
      const DeepCollectionEquality().hash(_fillingTypes),
      const DeepCollectionEquality().hash(_arches));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SchemeImplCopyWith<_$SchemeImpl> get copyWith =>
      __$$SchemeImplCopyWithImpl<_$SchemeImpl>(this, _$identity);
}

abstract class _Scheme extends Scheme {
  const factory _Scheme(
      {required final String id,
      required final List<Line> lines,
      required final List<SizeSegment> sizeSegments,
      required final List<Polygon> polygons,
      required final List<OpeningTypeRecord> openingTypes,
      required final List<FillingTypeRecord> fillingTypes,
      required final List<Arch> arches}) = _$SchemeImpl;
  const _Scheme._() : super._();

  @override
  String get id;
  @override
  List<Line> get lines;
  @override
  List<SizeSegment> get sizeSegments;
  @override
  List<Polygon> get polygons;
  @override
  List<OpeningTypeRecord> get openingTypes;
  @override
  List<FillingTypeRecord> get fillingTypes;
  @override
  List<Arch> get arches;
  @override
  @JsonKey(ignore: true)
  _$$SchemeImplCopyWith<_$SchemeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
