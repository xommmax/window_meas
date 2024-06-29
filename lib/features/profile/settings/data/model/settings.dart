import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:window_meas/features/profile/settings/data/model/settings_db.dart';

part 'settings.freezed.dart';

@freezed
class Settings with _$Settings {
  static const defaultId = 1;
  static const defaultPrintEmptyFields = false;
  static const defaultUserName = '';
  static const defaultIsAdmin = false;
  static const defaultIsAdminModeEnabled = false;

  const Settings._();

  const factory Settings({
    required int id,
    required bool printEmptyFields,
    required String userName,
    required bool isAdmin,
    required bool isAdminModeEnabled,
    List<String>? adminsList,
    String? kommoSubdomain,
    String? kommoToken,
    int? kommoListId,
    String? appPassword,
  }) = _Settings;

  factory Settings.initial() => const Settings(
        id: defaultId,
        printEmptyFields: defaultPrintEmptyFields,
        userName: defaultUserName,
        isAdmin: defaultIsAdmin,
        isAdminModeEnabled: defaultIsAdminModeEnabled,
      );

  SettingsDB toDB() => SettingsDB()
    ..printEmptyFields = printEmptyFields
    ..id = id
    ..userName = userName
    ..isAdmin = isAdmin
    ..isAdminModeEnabled = isAdminModeEnabled
    ..adminsList = adminsList
    ..kommoSubdomain = kommoSubdomain
    ..kommoToken = kommoToken
    ..kommoListId = kommoListId
    ..appPassword = appPassword;

  static Settings fromDB(SettingsDB db) => Settings(
        printEmptyFields: db.printEmptyFields,
        id: db.id,
        userName: db.userName,
        isAdmin: db.isAdmin,
        isAdminModeEnabled: db.isAdminModeEnabled,
        adminsList: db.adminsList,
        kommoSubdomain: db.kommoSubdomain,
        kommoToken: db.kommoToken,
        kommoListId: db.kommoListId,
        appPassword: db.appPassword,
      );
}
