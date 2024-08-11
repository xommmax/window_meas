// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'template.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Template {
  int? get localId => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  Scheme get scheme => throw _privateConstructorUsedError;
  TemplateType get type => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TemplateCopyWith<Template> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TemplateCopyWith<$Res> {
  factory $TemplateCopyWith(Template value, $Res Function(Template) then) =
      _$TemplateCopyWithImpl<$Res, Template>;
  @useResult
  $Res call(
      {int? localId,
      String id,
      DateTime date,
      Scheme scheme,
      TemplateType type});

  $SchemeCopyWith<$Res> get scheme;
}

/// @nodoc
class _$TemplateCopyWithImpl<$Res, $Val extends Template>
    implements $TemplateCopyWith<$Res> {
  _$TemplateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? localId = freezed,
    Object? id = null,
    Object? date = null,
    Object? scheme = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      localId: freezed == localId
          ? _value.localId
          : localId // ignore: cast_nullable_to_non_nullable
              as int?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      scheme: null == scheme
          ? _value.scheme
          : scheme // ignore: cast_nullable_to_non_nullable
              as Scheme,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TemplateType,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SchemeCopyWith<$Res> get scheme {
    return $SchemeCopyWith<$Res>(_value.scheme, (value) {
      return _then(_value.copyWith(scheme: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TemplateImplCopyWith<$Res>
    implements $TemplateCopyWith<$Res> {
  factory _$$TemplateImplCopyWith(
          _$TemplateImpl value, $Res Function(_$TemplateImpl) then) =
      __$$TemplateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? localId,
      String id,
      DateTime date,
      Scheme scheme,
      TemplateType type});

  @override
  $SchemeCopyWith<$Res> get scheme;
}

/// @nodoc
class __$$TemplateImplCopyWithImpl<$Res>
    extends _$TemplateCopyWithImpl<$Res, _$TemplateImpl>
    implements _$$TemplateImplCopyWith<$Res> {
  __$$TemplateImplCopyWithImpl(
      _$TemplateImpl _value, $Res Function(_$TemplateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? localId = freezed,
    Object? id = null,
    Object? date = null,
    Object? scheme = null,
    Object? type = null,
  }) {
    return _then(_$TemplateImpl(
      localId: freezed == localId
          ? _value.localId
          : localId // ignore: cast_nullable_to_non_nullable
              as int?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      scheme: null == scheme
          ? _value.scheme
          : scheme // ignore: cast_nullable_to_non_nullable
              as Scheme,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TemplateType,
    ));
  }
}

/// @nodoc

class _$TemplateImpl extends _Template {
  const _$TemplateImpl(
      {this.localId,
      required this.id,
      required this.date,
      required this.scheme,
      required this.type})
      : super._();

  @override
  final int? localId;
  @override
  final String id;
  @override
  final DateTime date;
  @override
  final Scheme scheme;
  @override
  final TemplateType type;

  @override
  String toString() {
    return 'Template(localId: $localId, id: $id, date: $date, scheme: $scheme, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TemplateImpl &&
            (identical(other.localId, localId) || other.localId == localId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.scheme, scheme) || other.scheme == scheme) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, localId, id, date, scheme, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TemplateImplCopyWith<_$TemplateImpl> get copyWith =>
      __$$TemplateImplCopyWithImpl<_$TemplateImpl>(this, _$identity);
}

abstract class _Template extends Template {
  const factory _Template(
      {final int? localId,
      required final String id,
      required final DateTime date,
      required final Scheme scheme,
      required final TemplateType type}) = _$TemplateImpl;
  const _Template._() : super._();

  @override
  int? get localId;
  @override
  String get id;
  @override
  DateTime get date;
  @override
  Scheme get scheme;
  @override
  TemplateType get type;
  @override
  @JsonKey(ignore: true)
  _$$TemplateImplCopyWith<_$TemplateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
