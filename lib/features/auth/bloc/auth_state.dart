import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const AuthState._();

  const factory AuthState({
    required bool isLoading,
    User? user,
    String? message,
  }) = _AuthState;

  factory AuthState.initial() => const AuthState(isLoading: false);
}
