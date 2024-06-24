import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:window_meas/features/measurement/data/db/ds/meas_local_ds.dart';
import 'package:window_meas/features/measurement/data/remote/ds/meas_remote_ds.dart';
import 'package:window_meas/features/measurement/data/domain/model/measurement.dart';
import 'package:window_meas/features/measurement/data/remote/model/measurement_dto.dart';

@singleton
class MeasurementRepository {
  MeasurementRepository(this.local, this.remote);

  final MeasurementLocalDataSource local;
  final MeasurementRemoteDataSource remote;

  Future<void> addLocalMeasurement(Measurement measurement) =>
      local.addMeasurement(measurement.toDB());

  Future<void> addRemoteMeasurement(Measurement measurement, File pdfFile) async {
    if (measurement.remoteId == null) {
      final remoteId = await remote.addMeasurement(MeasurementDTO.fromDomain(measurement));
      await local.updateMeasurement(measurement.copyWith(remoteId: remoteId).toDB());
    } else {
      await remote.updateMeasurement(MeasurementDTO.fromDomain(measurement));
    }
  }

  Future<List<Measurement>> getMeasurements() async {
    final list = await local.getMeasurements();
    return list.map((e) => Measurement.fromDB(e)).toList();
  }

  Future<Measurement?> getMeasurement(String id) async {
    final db = await local.getMeasurement(id);
    return db != null ? Measurement.fromDB(db) : null;
  }

  Future<void> updateMeasurement(Measurement measurement) =>
      local.updateMeasurement(measurement.toDB());

  Stream<List<Measurement>> watchMeasurements() =>
      local.watchMeasurements().map((list) => list.map((e) => Measurement.fromDB(e)).toList());

  Future<void> deleteMeasurement(String measurementId) => local.deleteMeasurement(measurementId);
}
