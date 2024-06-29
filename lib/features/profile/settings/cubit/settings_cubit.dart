import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:window_meas/features/profile/settings/cubit/settings_state.dart';
import 'package:window_meas/features/profile/settings/data/model/settings.dart';
import 'package:window_meas/features/profile/settings/data/settings_repo.dart';

@injectable
class SettingsCubit extends Cubit<SettingsState> {
  final SettingsRepository repo;
  StreamSubscription? settingsSubscription;

  SettingsCubit(this.repo) : super(SettingsState.initial());

  Future<void> updateSettings(Settings settings) async {
    await repo.saveSettings(settings);
  }

  Future<void> watchSettings() async {
    settingsSubscription = repo.watchSettings().listen((settings) {
      emit(SettingsState(settings: settings));
    });

    final settings = await repo.getSettings();
    if (settings == null) {
      await repo.saveSettings(Settings.initial());
    } else {
      emit(SettingsState(settings: settings));
    }
  }

  @override
  Future<void> close() {
    settingsSubscription?.cancel();
    return super.close();
  }

  Future<void> logout() async {
    if (state.settings != null) {
      await updateSettings(state.settings!.copyWith(
        userName: Settings.defaultUserName,
        isAdmin: Settings.defaultIsAdmin,
        isAdminModeEnabled: Settings.defaultIsAdminModeEnabled,
        adminsList: null,
        kommoSubdomain: null,
        kommoToken: null,
        kommoListId: null,
        appPassword: null,
      ));
    }
    await FirebaseAuth.instance.signOut();
  }
}
