import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:window_meas/features/profile/settings/data/model/settings_db.dart';

part 'settings.freezed.dart';

@freezed
class Settings with _$Settings {
  static const defaultId = 1;
  static const defaultPrintEmptyFields = false;
  static const defaultUserName = '';

  const Settings._();

  const factory Settings({
    required int id,
    required bool printEmptyFields,
    required String userName,
  }) = _Settings;

  factory Settings.initial() => const Settings(
        id: defaultId,
        printEmptyFields: defaultPrintEmptyFields,
        userName: defaultUserName,
      );

  SettingsDB toDB() => SettingsDB()
    ..printEmptyFields = printEmptyFields
    ..id = id
    ..userName = userName;

  static Settings fromDB(SettingsDB db) => Settings(
        printEmptyFields: db.printEmptyFields,
        id: db.id,
        userName: db.userName,
      );
}
