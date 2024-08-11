// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'editor_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EditorState {
  EditorMode get mode => throw _privateConstructorUsedError;
  TemplateType get templateType => throw _privateConstructorUsedError;
  Template? get template => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditorStateCopyWith<EditorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditorStateCopyWith<$Res> {
  factory $EditorStateCopyWith(
          EditorState value, $Res Function(EditorState) then) =
      _$EditorStateCopyWithImpl<$Res, EditorState>;
  @useResult
  $Res call({EditorMode mode, TemplateType templateType, Template? template});

  $TemplateCopyWith<$Res>? get template;
}

/// @nodoc
class _$EditorStateCopyWithImpl<$Res, $Val extends EditorState>
    implements $EditorStateCopyWith<$Res> {
  _$EditorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mode = null,
    Object? templateType = null,
    Object? template = freezed,
  }) {
    return _then(_value.copyWith(
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as EditorMode,
      templateType: null == templateType
          ? _value.templateType
          : templateType // ignore: cast_nullable_to_non_nullable
              as TemplateType,
      template: freezed == template
          ? _value.template
          : template // ignore: cast_nullable_to_non_nullable
              as Template?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TemplateCopyWith<$Res>? get template {
    if (_value.template == null) {
      return null;
    }

    return $TemplateCopyWith<$Res>(_value.template!, (value) {
      return _then(_value.copyWith(template: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EditorStateImplCopyWith<$Res>
    implements $EditorStateCopyWith<$Res> {
  factory _$$EditorStateImplCopyWith(
          _$EditorStateImpl value, $Res Function(_$EditorStateImpl) then) =
      __$$EditorStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({EditorMode mode, TemplateType templateType, Template? template});

  @override
  $TemplateCopyWith<$Res>? get template;
}

/// @nodoc
class __$$EditorStateImplCopyWithImpl<$Res>
    extends _$EditorStateCopyWithImpl<$Res, _$EditorStateImpl>
    implements _$$EditorStateImplCopyWith<$Res> {
  __$$EditorStateImplCopyWithImpl(
      _$EditorStateImpl _value, $Res Function(_$EditorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mode = null,
    Object? templateType = null,
    Object? template = freezed,
  }) {
    return _then(_$EditorStateImpl(
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as EditorMode,
      templateType: null == templateType
          ? _value.templateType
          : templateType // ignore: cast_nullable_to_non_nullable
              as TemplateType,
      template: freezed == template
          ? _value.template
          : template // ignore: cast_nullable_to_non_nullable
              as Template?,
    ));
  }
}

/// @nodoc

class _$EditorStateImpl implements _EditorState {
  const _$EditorStateImpl(
      {required this.mode, required this.templateType, this.template});

  @override
  final EditorMode mode;
  @override
  final TemplateType templateType;
  @override
  final Template? template;

  @override
  String toString() {
    return 'EditorState(mode: $mode, templateType: $templateType, template: $template)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditorStateImpl &&
            (identical(other.mode, mode) || other.mode == mode) &&
            (identical(other.templateType, templateType) ||
                other.templateType == templateType) &&
            (identical(other.template, template) ||
                other.template == template));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mode, templateType, template);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditorStateImplCopyWith<_$EditorStateImpl> get copyWith =>
      __$$EditorStateImplCopyWithImpl<_$EditorStateImpl>(this, _$identity);
}

abstract class _EditorState implements EditorState {
  const factory _EditorState(
      {required final EditorMode mode,
      required final TemplateType templateType,
      final Template? template}) = _$EditorStateImpl;

  @override
  EditorMode get mode;
  @override
  TemplateType get templateType;
  @override
  Template? get template;
  @override
  @JsonKey(ignore: true)
  _$$EditorStateImplCopyWith<_$EditorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
