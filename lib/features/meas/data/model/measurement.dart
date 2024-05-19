import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';
import 'package:window_meas/features/meas/data/model/measurement_db.dart';
import 'package:window_meas/features/meas/data/params/building_type_enum.dart';

part 'measurement.freezed.dart';

@freezed
abstract class Measurement with _$Measurement {
  const Measurement._();

  const factory Measurement({
    int? innerId,
    required String id,
    required DateTime date,
    required String address,
    required String clientName,
    required String phoneNumber,
    required bool assembly,
    required bool disassembly,
    required bool delivery,
    required bool unloading,
    required BuildingType buildingType,
  }) = _Measurement;

  factory Measurement.initial() => Measurement(
        id: const Uuid().v4(),
        date: DateTime.now(),
        address: '',
        clientName: '',
        phoneNumber: '',
        assembly: false,
        disassembly: false,
        delivery: false,
        unloading: false,
        buildingType: BuildingType.none,
      );

  MeasurementDB toDB() => MeasurementDB()
    ..innerId = innerId
    ..id = id
    ..date = date
    ..address = address
    ..clientName = clientName
    ..phoneNumber = phoneNumber
    ..assembly = assembly
    ..disassembly = disassembly
    ..delivery = delivery
    ..unloading = unloading
    ..buildingType = buildingType.name;

  static Measurement fromDB(MeasurementDB db) => Measurement(
        innerId: db.innerId,
        id: db.id,
        date: db.date,
        address: db.address,
        clientName: db.clientName,
        phoneNumber: db.phoneNumber,
        assembly: db.assembly,
        disassembly: db.disassembly,
        delivery: db.delivery,
        unloading: db.unloading,
        buildingType: BuildingType.values.byName(db.buildingType),
      );
}
