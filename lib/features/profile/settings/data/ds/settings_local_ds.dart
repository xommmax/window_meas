import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:window_meas/features/profile/settings/data/model/settings.dart';
import 'package:window_meas/features/profile/settings/data/model/settings_db.dart';

abstract class SettingsLocalDataSource {
  Stream<SettingsDB?> watchSettings();

  Future<SettingsDB?> getSettings();

  Future<void> saveSettings(SettingsDB settings);
}

@Singleton(as: SettingsLocalDataSource)
class SettingsIsarLocalDataSource implements SettingsLocalDataSource {
  SettingsIsarLocalDataSource(this.isar);

  final Isar isar;

  @override
  Future<void> saveSettings(SettingsDB settings) =>
      isar.writeTxn(() => isar.settingsDBs.put(settings));

  @override
  Future<SettingsDB?> getSettings() => isar.settingsDBs.get(Settings.defaultId);

  @override
  Stream<SettingsDB?> watchSettings() => isar.settingsDBs
      .where()
      .idEqualTo(Settings.defaultId)
      .watch()
      .map((list) => list.firstOrNull);
}
