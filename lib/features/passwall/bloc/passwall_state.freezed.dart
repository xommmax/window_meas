// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'passwall_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PassWallState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PassWallStateCopyWith<PassWallState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PassWallStateCopyWith<$Res> {
  factory $PassWallStateCopyWith(
          PassWallState value, $Res Function(PassWallState) then) =
      _$PassWallStateCopyWithImpl<$Res, PassWallState>;
  @useResult
  $Res call({bool isLoading, bool isError, String? password});
}

/// @nodoc
class _$PassWallStateCopyWithImpl<$Res, $Val extends PassWallState>
    implements $PassWallStateCopyWith<$Res> {
  _$PassWallStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PassWallStateImplCopyWith<$Res>
    implements $PassWallStateCopyWith<$Res> {
  factory _$$PassWallStateImplCopyWith(
          _$PassWallStateImpl value, $Res Function(_$PassWallStateImpl) then) =
      __$$PassWallStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, bool isError, String? password});
}

/// @nodoc
class __$$PassWallStateImplCopyWithImpl<$Res>
    extends _$PassWallStateCopyWithImpl<$Res, _$PassWallStateImpl>
    implements _$$PassWallStateImplCopyWith<$Res> {
  __$$PassWallStateImplCopyWithImpl(
      _$PassWallStateImpl _value, $Res Function(_$PassWallStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? password = freezed,
  }) {
    return _then(_$PassWallStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PassWallStateImpl extends _PassWallState {
  const _$PassWallStateImpl(
      {required this.isLoading, this.isError = false, this.password})
      : super._();

  @override
  final bool isLoading;
  @override
  @JsonKey()
  final bool isError;
  @override
  final String? password;

  @override
  String toString() {
    return 'PassWallState(isLoading: $isLoading, isError: $isError, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PassWallStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isError, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PassWallStateImplCopyWith<_$PassWallStateImpl> get copyWith =>
      __$$PassWallStateImplCopyWithImpl<_$PassWallStateImpl>(this, _$identity);
}

abstract class _PassWallState extends PassWallState {
  const factory _PassWallState(
      {required final bool isLoading,
      final bool isError,
      final String? password}) = _$PassWallStateImpl;
  const _PassWallState._() : super._();

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  String? get password;
  @override
  @JsonKey(ignore: true)
  _$$PassWallStateImplCopyWith<_$PassWallStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
