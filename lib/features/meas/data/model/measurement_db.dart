import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';
import 'package:window_meas/features/meas/data/params/building_type_enum.dart';
import 'package:window_meas/features/meas/data/params/elevator_options_enum.dart';
import 'package:window_meas/features/meas/data/params/flat_status_enum.dart';

part 'measurement_db.g.dart';

@collection
class MeasurementDB {
  Id? innerId;
  @Index(unique: true)
  late String id;
  late DateTime date;
  late String address;
  late String clientName;
  late String phoneNumber;
  late bool assembly;
  late bool disassembly;
  late bool delivery;
  late bool unloading;
  @Enumerated(EnumType.name)
  @Default(BuildingType.none)
  late BuildingType buildingType;
  @Enumerated(EnumType.name)
  @Default(FlatStatus.none)
  late FlatStatus flatStatus;
  late bool garbageRemoval;
  @Enumerated(EnumType.name)
  @Default(ElevatorOptions.none)
  late ElevatorOptions elevator;
}
