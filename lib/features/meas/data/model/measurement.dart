import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';
import 'package:window_meas/features/meas/data/model/measurement_db.dart';
import 'package:window_meas/features/meas/data/params/building_type_enum.dart';
import 'package:window_meas/features/meas/data/params/elevator_options_enum.dart';
import 'package:window_meas/features/meas/data/params/flat_status_enum.dart';
import 'package:window_meas/features/meas/data/params/profile_system_enum.dart';
import 'package:window_meas/features/meas/data/params/quarter_position_enum.dart';

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
    required FlatStatus flatStatus,
    required bool garbageRemoval,
    required ElevatorOptions elevator,
    required String quarterSize,
    required QuarterPosition quarterPosition,
    required bool staticCalculation,
    required ProfileSystem profileSystem,
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
        flatStatus: FlatStatus.none,
        garbageRemoval: false,
        elevator: ElevatorOptions.none,
        quarterSize: '',
        quarterPosition: QuarterPosition.none,
        staticCalculation: false,
        profileSystem: ProfileSystem.none,
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
    ..buildingType = buildingType
    ..flatStatus = flatStatus
    ..garbageRemoval = garbageRemoval
    ..elevator = elevator
    ..quarterSize = quarterSize
    ..quarterPosition = quarterPosition
    ..staticCalculation = staticCalculation
    ..profileSystem = profileSystem;

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
        buildingType: db.buildingType,
        flatStatus: db.flatStatus,
        garbageRemoval: db.garbageRemoval,
        elevator: db.elevator,
        quarterSize: db.quarterSize,
        quarterPosition: db.quarterPosition,
        staticCalculation: db.staticCalculation,
        profileSystem: db.profileSystem,
      );
}
