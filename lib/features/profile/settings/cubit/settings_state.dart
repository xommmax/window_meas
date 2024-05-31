import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:window_meas/features/profile/settings/data/model/settings.dart';

part 'settings_state.freezed.dart';

@freezed
class SettingsState with _$SettingsState {
  const SettingsState._();

  const factory SettingsState({
    required Settings? settings,
  }) = _SettingsState;

  factory SettingsState.initial() => const SettingsState(
        settings: null,
      );
}
