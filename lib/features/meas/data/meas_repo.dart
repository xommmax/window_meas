import 'package:window_meas/features/meas/data/model/measurement.dart';

class MeasurementRepository {
  List<Measurement> measurements = [];

  void addMeasurement(Measurement measurement) {
    measurements.add(measurement);
  }

  List<Measurement> getMeasurements() {
    return measurements;
  }
}
