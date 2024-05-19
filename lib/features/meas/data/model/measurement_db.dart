import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';
import 'package:window_meas/features/meas/data/model/expander_option_db.dart';
import 'package:window_meas/features/meas/data/params/building_type_enum.dart';
import 'package:window_meas/features/meas/data/params/door_opening_type_enum.dart';
import 'package:window_meas/features/meas/data/params/doorstep_option_enum.dart';
import 'package:window_meas/features/meas/data/params/doorstep_type_enum.dart';
import 'package:window_meas/features/meas/data/params/elevator_options_enum.dart';
import 'package:window_meas/features/meas/data/params/flat_status_enum.dart';
import 'package:window_meas/features/meas/data/params/profile_system_enum.dart';
import 'package:window_meas/features/meas/data/params/quarter_position_enum.dart';
import 'package:window_meas/features/meas/data/params/rubber_color_enum.dart';
import 'package:window_meas/features/meas/data/params/stand_profile_enum.dart';

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
  @Enumerated(EnumType.name)
  @Default(DoorstepOption.none)
  late DoorstepOption doorstep;
  @Enumerated(EnumType.name)
  @Default(DoorstepType.none)
  late DoorstepType doorstepType;
  @Enumerated(EnumType.name)
  @Default(DoorOpeningType.none)
  late DoorOpeningType doorOpeningType;
  @Default('')
  late String laminationInternal;
  @Default('')
  late String laminationExternal;
  @Enumerated(EnumType.name)
  @Default(RubberColor.none)
  late RubberColor rubberColor;
  @Enumerated(EnumType.name)
  @Default(StandProfile.none)
  late StandProfile standProfile;
  late ExpanderOptionDB expanderOption;
}
