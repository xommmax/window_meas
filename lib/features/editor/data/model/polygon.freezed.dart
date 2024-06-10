// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'polygon.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Polygon {
  List<Offset> get points => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PolygonCopyWith<Polygon> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PolygonCopyWith<$Res> {
  factory $PolygonCopyWith(Polygon value, $Res Function(Polygon) then) =
      _$PolygonCopyWithImpl<$Res, Polygon>;
  @useResult
  $Res call({List<Offset> points});
}

/// @nodoc
class _$PolygonCopyWithImpl<$Res, $Val extends Polygon>
    implements $PolygonCopyWith<$Res> {
  _$PolygonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? points = null,
  }) {
    return _then(_value.copyWith(
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as List<Offset>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PolygonImplCopyWith<$Res> implements $PolygonCopyWith<$Res> {
  factory _$$PolygonImplCopyWith(
          _$PolygonImpl value, $Res Function(_$PolygonImpl) then) =
      __$$PolygonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Offset> points});
}

/// @nodoc
class __$$PolygonImplCopyWithImpl<$Res>
    extends _$PolygonCopyWithImpl<$Res, _$PolygonImpl>
    implements _$$PolygonImplCopyWith<$Res> {
  __$$PolygonImplCopyWithImpl(
      _$PolygonImpl _value, $Res Function(_$PolygonImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? points = null,
  }) {
    return _then(_$PolygonImpl(
      points: null == points
          ? _value._points
          : points // ignore: cast_nullable_to_non_nullable
              as List<Offset>,
    ));
  }
}

/// @nodoc

class _$PolygonImpl extends _Polygon with DiagnosticableTreeMixin {
  const _$PolygonImpl({required final List<Offset> points})
      : _points = points,
        super._();

  final List<Offset> _points;
  @override
  List<Offset> get points {
    if (_points is EqualUnmodifiableListView) return _points;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_points);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Polygon(points: $points)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Polygon'))
      ..add(DiagnosticsProperty('points', points));
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PolygonImplCopyWith<_$PolygonImpl> get copyWith =>
      __$$PolygonImplCopyWithImpl<_$PolygonImpl>(this, _$identity);
}

abstract class _Polygon extends Polygon {
  const factory _Polygon({required final List<Offset> points}) = _$PolygonImpl;
  const _Polygon._() : super._();

  @override
  List<Offset> get points;
  @override
  @JsonKey(ignore: true)
  _$$PolygonImplCopyWith<_$PolygonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
