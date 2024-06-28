import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';
import 'package:window_meas/features/profile/settings/data/model/settings.dart';

part 'settings_db.g.dart';

@collection
class SettingsDB {
  late Id id;
  @Default(Settings.defaultPrintEmptyFields)
  late bool printEmptyFields;
  @Default(Settings.defaultUserName)
  late String userName;
}
