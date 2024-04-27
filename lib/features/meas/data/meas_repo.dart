import 'package:injectable/injectable.dart';
import 'package:window_meas/features/meas/data/ds/meas_local_ds.dart';
import 'package:window_meas/features/meas/data/ds/meas_remote_ds.dart';
import 'package:window_meas/features/meas/data/model/measurement.dart';

@singleton
class MeasurementRepository {
  MeasurementRepository(this.local, this.remote);

  final MeasurementLocalDataSource local;
  final MeasurementRemoteDataSource remote;

  Future<void> addMeasurement(Measurement measurement) => local.addMeasurement(measurement.toDB());

  Future<List<Measurement>> getMeasurements() async {
    final list = await local.getMeasurements();
    return list.map((e) => Measurement.fromDB(e)).toList()..sort((m1, m2) => m2.date.compareTo(m1.date));
  }
}
