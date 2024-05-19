import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';
import 'package:window_meas/features/meas/data/params/building_type_enum.dart';
import 'package:window_meas/features/meas/data/params/elevator_options_enum.dart';
import 'package:window_meas/features/meas/data/params/flat_status_enum.dart';
import 'package:window_meas/features/meas/data/params/profile_system_enum.dart';
import 'package:window_meas/features/meas/data/params/quarter_position_enum.dart';

part 'measurement_db.g.dart';

@collection
class MeasurementDB {
  Id? innerId;
  @Index(unique: true)
  late String id;
  late DateTime date;
  @Default('')
  late String address;
  @Default('')
  late String clientName;
  @Default('')
  late String phoneNumber;
  @Default(false)
  late bool assembly;
  @Default(false)
  late bool disassembly;
  @Default(false)
  late bool delivery;
  @Default(false)
  late bool unloading;
  @Enumerated(EnumType.name)
  @Default(BuildingType.none)
  late BuildingType buildingType;
  @Enumerated(EnumType.name)
  @Default(FlatStatus.none)
  late FlatStatus flatStatus;
  @Default(false)
  late bool garbageRemoval;
  @Enumerated(EnumType.name)
  @Default(ElevatorOptions.none)
  late ElevatorOptions elevator;
  @Default('')
  late String quarterSize;
  @Enumerated(EnumType.name)
  @Default(QuarterPosition.none)
  late QuarterPosition quarterPosition;
  @Default(false)
  late bool staticCalculation;
  @Enumerated(EnumType.name)
  @Default(ProfileSystem.none)
  late ProfileSystem profileSystem;
}
