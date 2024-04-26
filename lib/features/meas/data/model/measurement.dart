import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:window_meas/features/meas/data/model/measurement_db.dart';

part 'measurement.freezed.dart';

@freezed
abstract class Measurement with _$Measurement {
  const Measurement._();

  const factory Measurement({
    required String id,
    required DateTime date,
    String? clientName,
    String? address,
  }) = _Measurement;

  MeasurementDB toDB() => MeasurementDB()
    ..id = id
    ..date = date
    ..clientName = clientName
    ..address = address;

  static Measurement fromDB(MeasurementDB db) => Measurement(
        id: db.id,
        date: db.date,
        clientName: db.clientName,
        address: db.address,
      );
}
