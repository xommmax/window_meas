import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';

part 'settings_db.g.dart';

@collection
class SettingsDB {
  late Id id;
  @Default(false)
  late bool printEmptyFields;
}
