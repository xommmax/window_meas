import 'package:freezed_annotation/freezed_annotation.dart';

part 'passwall_state.freezed.dart';

@freezed
class PassWallState with _$PassWallState {
  const PassWallState._();

  const factory PassWallState({
    required bool isLoading,
    @Default(false) bool isError,
    String? password,
  }) = _PassWallState;

  factory PassWallState.initial() => const PassWallState(
        isLoading: false,
      );
}
