import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:window_meas/features/meas/data/model/measurement_db.dart';

abstract class MeasurementLocalDataSource {
  Future<List<MeasurementDB>> getMeasurements();

  Stream<List<MeasurementDB>> watchMeasurements();

  Future<MeasurementDB?> getMeasurement(String id);

  Future<void> addMeasurement(MeasurementDB measurement);

  Future<void> updateMeasurement(MeasurementDB measurement);

  Future<void> deleteMeasurement(String id);
}

@Singleton(as: MeasurementLocalDataSource)
class MeasurementIsarLocalDataSource implements MeasurementLocalDataSource {
  MeasurementIsarLocalDataSource(this.isar);

  final Isar isar;

  @override
  Future<void> addMeasurement(MeasurementDB measurement) => isar.writeTxn(() => isar.measurementDBs.put(measurement));

  @override
  Future<void> deleteMeasurement(String id) => isar.writeTxn(() => isar.measurementDBs.deleteById(id));

  @override
  Future<MeasurementDB?> getMeasurement(String id) => isar.measurementDBs.getById(id);

  @override
  Future<List<MeasurementDB>> getMeasurements() => isar.measurementDBs.where().sortByDateDesc().findAll();

  @override
  Future<void> updateMeasurement(MeasurementDB measurement) =>
      isar.writeTxn(() => isar.measurementDBs.put(measurement));

  @override
  Stream<List<MeasurementDB>> watchMeasurements() => isar.measurementDBs.where().sortByDateDesc().watch();
}
