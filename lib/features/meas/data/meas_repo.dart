import 'package:injectable/injectable.dart';
import 'package:window_meas/features/meas/data/ds/meas_local_ds.dart';
import 'package:window_meas/features/meas/data/ds/meas_remote_ds.dart';
import 'package:window_meas/features/meas/data/model/measurement.dart';

@singleton
class MeasurementRepository {
  MeasurementRepository(this.local, this.remote);

  final MeasurementLocalDataSource local;
  final MeasurementRemoteDataSource remote;

  Future<void> addMeasurement(Measurement measurement) =>
      local.addMeasurement(measurement.toDB());

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

  Stream<List<Measurement>> watchMeasurements() => local
      .watchMeasurements()
      .map((list) => list.map((e) => Measurement.fromDB(e)).toList());

  Future<void> deleteMeasurement(String measurementId) =>
      local.deleteMeasurement(measurementId);
}
