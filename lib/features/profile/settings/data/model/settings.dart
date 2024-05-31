import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:window_meas/features/profile/settings/data/model/settings_db.dart';

part 'settings.freezed.dart';

@freezed
class Settings with _$Settings {
  static const defaultId = 1;

  const Settings._();

  const factory Settings({
    required int id,
    required bool printEmptyFields,
  }) = _Settings;

  factory Settings.initial() => const Settings(
        printEmptyFields: false,
        id: defaultId,
      );

  SettingsDB toDB() => SettingsDB()
    ..printEmptyFields = printEmptyFields
    ..id = id;

  static Settings fromDB(SettingsDB db) => Settings(
        printEmptyFields: db.printEmptyFields,
        id: db.id,
      );
}
