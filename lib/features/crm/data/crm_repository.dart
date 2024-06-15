import 'package:window_meas/features/meas/data/model/measurement.dart';

abstract class CrmRepository {
  Future<void> addMeasurement(Measurement measurement);

  Future<List<Measurement>> getAllMeasurements();
}
