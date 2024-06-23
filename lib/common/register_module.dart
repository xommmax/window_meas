import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:window_meas/features/measurement/data/db/model/measurement_db.dart';
import 'package:window_meas/features/profile/settings/data/model/settings_db.dart';
import 'package:window_meas/features/templates/data/model/template_db.dart';

@module
abstract class RegisterModule {
  @preResolve
  Future<Isar> isar() async {
    final dir = await getApplicationDocumentsDirectory();
    return Isar.open(
      [
        MeasurementDBSchema,
        TemplateDBSchema,
        SettingsDBSchema,
      ],
      directory: dir.path,
    );
  }
}
