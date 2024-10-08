import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:window_meas/features/measurement/data/db/ds/meas_local_ds.dart';
import 'package:window_meas/features/measurement/data/remote/meas_remote_ds.dart';
import 'package:window_meas/features/measurement/data/domain/model/measurement.dart';
import 'package:window_meas/features/profile/settings/data/ds/settings_local_ds.dart';
import 'package:window_meas/features/profile/settings/data/model/settings_db.dart';

abstract class MeasurementRepository {
  Future<void> addLocalMeasurement(Measurement measurement);

  Future<List<Measurement>> getLocalMeasurements();

  Future<Measurement?> getLocalMeasurement(String id);

  Future<void> updateLocalMeasurement(Measurement measurement);

  Stream<List<Measurement>> watchLocalMeasurements();

  Future<void> deleteLocalMeasurement(String measurementId);

  Future<void> uploadPdfFile(File file, String leadId);
}

@Singleton(as: MeasurementRepository)
class MeasurementRepositoryImpl implements MeasurementRepository {
  MeasurementRepositoryImpl(this.local, this.remote, this.settingsDS) {
    settingsDS.watchSettings().listen(_updateWithSettings);
    settingsDS.getSettings().then(_updateWithSettings);
  }

  final MeasurementLocalDataSource local;
  final MeasurementRemoteDataSource remote;
  final SettingsLocalDataSource settingsDS;

  @override
  Future<void> addLocalMeasurement(Measurement measurement) =>
      local.addMeasurement(measurement.toDB());

  @override
  Future<List<Measurement>> getLocalMeasurements() async {
    final list = await local.getMeasurements();
    return list.map((e) => Measurement.fromDB(e)).toList();
  }

  @override
  Future<Measurement?> getLocalMeasurement(String id) async {
    final db = await local.getMeasurement(id);
    return db != null ? Measurement.fromDB(db) : null;
  }

  @override
  Future<void> updateLocalMeasurement(Measurement measurement) =>
      local.updateMeasurement(measurement.toDB());

  @override
  Stream<List<Measurement>> watchLocalMeasurements() =>
      local.watchMeasurements().map((list) => list.map((e) => Measurement.fromDB(e)).toList());

  @override
  Future<void> deleteLocalMeasurement(String measurementId) =>
      local.deleteMeasurement(measurementId);

  void _updateWithSettings(SettingsDB? settings) {
    if (settings != null) {
      remote.updateWithSettings(
        subdomain: settings.kommoSubdomain,
        token: settings.kommoToken,
        listId: settings.kommoListId,
        drive: settings.kommoDrive,
      );
    }
  }

  @override
  Future<void> uploadPdfFile(File file, String leadId) => remote.uploadPdfFile(file, leadId);
}
