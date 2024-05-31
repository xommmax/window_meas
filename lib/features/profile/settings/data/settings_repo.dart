import 'package:injectable/injectable.dart';
import 'package:window_meas/features/profile/settings/data/ds/settings_local_ds.dart';
import 'package:window_meas/features/profile/settings/data/ds/settings_remote_ds.dart';
import 'package:window_meas/features/profile/settings/data/model/settings.dart';

@singleton
class SettingsRepository {
  SettingsRepository(this.local, this.remote);

  final SettingsLocalDataSource local;
  final SettingsRemoteDataSource remote;

  Future<void> saveSettings(Settings settings) => local.saveSettings(settings.toDB());

  Future<Settings?> getSettings() async {
    final db = await local.getSettings();
    return db != null ? Settings.fromDB(db) : null;
  }

  Stream<Settings?> watchSettingss() =>
      local.watchSettings().map((e) => e != null ? Settings.fromDB(e) : null);
}
