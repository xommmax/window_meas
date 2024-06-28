import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const AuthState._();

  const factory AuthState({
    required bool isLoading,
    required bool isAuthorized,
  }) = _AuthState;

  factory AuthState.initial() => const AuthState(isLoading: false, isAuthorized: false);
}
