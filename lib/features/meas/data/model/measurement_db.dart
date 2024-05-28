import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';
import 'package:window_meas/features/editor/data/model/line_db.dart';
import 'package:window_meas/features/editor/data/model/polygon_db.dart';
import 'package:window_meas/features/editor/data/model/segment_db.dart';
import 'package:window_meas/features/meas/data/model/expander_option_db.dart';
import 'package:window_meas/features/editor/data/model/scheme_db.dart';
import 'package:window_meas/features/meas/data/params/assembly_type_enum.dart';
import 'package:window_meas/features/meas/data/params/building_type_enum.dart';
import 'package:window_meas/features/meas/data/params/door_opening_type_enum.dart';
import 'package:window_meas/features/meas/data/params/doorstep_option_enum.dart';
import 'package:window_meas/features/meas/data/params/doorstep_type_enum.dart';
import 'package:window_meas/features/meas/data/params/elevator_options_enum.dart';
import 'package:window_meas/features/meas/data/params/flat_status_enum.dart';
import 'package:window_meas/features/meas/data/params/panel_thickness_enum.dart';
import 'package:window_meas/features/meas/data/params/panel_type_enum.dart';
import 'package:window_meas/features/meas/data/params/profile_system_enum.dart';
import 'package:window_meas/features/meas/data/params/quarter_position_enum.dart';
import 'package:window_meas/features/meas/data/params/rubber_color_enum.dart';
import 'package:window_meas/features/meas/data/params/stand_profile_enum.dart';
import 'package:window_meas/features/meas/data/params/windowsill_connector_enum.dart';
import 'package:window_meas/features/meas/data/params/windowsill_depth_enum.dart';
import 'package:window_meas/features/meas/data/params/windowsill_extension_enum.dart';
import 'package:window_meas/features/meas/data/params/windowsill_type_enum.dart';

part 'measurement_db.g.dart';

@collection
class MeasurementDB {
  Id? innerId;
  @Index(unique: true)
  late String id;
  late DateTime date;
  @Default('')
  late String clientName;
  @Default('')
  late String city;
  @Default('')
  late String district;
  @Default('')
  late String street;
  @Default('')
  late String building;
  @Default('')
  late String block;
  @Default('')
  late String entrance;
  @Default('')
  late String doorphone;
  @Default('')
  late String floor;
  @Default('')
  late String apartment;
  @Default('')
  late String phoneNumberMain;
  @Default('')
  late String phoneNumberAdditional;
  @Enumerated(EnumType.name)
  @Default(AssemblyType.none)
  late AssemblyType assembly;
  @Default(false)
  late bool disassembly;
  @Default(false)
  late bool screedDisassembly;
  @Default(false)
  late bool gridDisassembly;
  @Default(false)
  late bool roofDisassembly;
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
  @Default('')
  late String glassUnit;
  @Enumerated(EnumType.name)
  @Default(PanelType.none)
  late PanelType panelType;
  @Enumerated(EnumType.name)
  @Default(PanelThickness.none)
  late PanelThickness panelThickness;
  @Default('')
  late String furniture;
  @Enumerated(EnumType.name)
  @Default(WindowsillType.none)
  late WindowsillType windowsillType;
  @Enumerated(EnumType.name)
  @Default(WindowsillDepth.none)
  late WindowsillDepth windowsillDepth;
  @Default('')
  late String windowsillSize;
  @Enumerated(EnumType.name)
  @Default(WindowsillConnector.none)
  late WindowsillConnector windowsillConnector;
  @Default('')
  late String windowsillColor;
  @Default(false)
  late bool windowsillAssembly;
  @Default('')
  late String drainageDepth;
  @Default('')
  late String drainageWidth;
  @Default('')
  late String drainageColor;
  @Default(false)
  late bool drainageEndCap;
  @Default('')
  late String canopyType;
  @Default('')
  late String canopySize;
  @Default('')
  late String canopyColor;
  @Default('')
  late String slopeDepth;
  @Default('')
  late String slopeLength;
  @Default('')
  late String slopeQuantity;
  @Default(false)
  late bool parapetReinforcement;
  @Enumerated(EnumType.name)
  @Default(WindowsillExtension.none)
  late WindowsillExtension windowsillExtension;
  @Default(false)
  late bool slabExtension;
  @Default(false)
  late bool extensionSheathing;
  @Default(false)
  late bool insulation;
  @Default(false)
  late bool sealing;
  @Default('')
  late String cost;
  @Default('')
  late String prepayment;
  @Default('')
  late String comment;
  @Default('')
  late String estimatedAssemblyTime;
  @Default(false)
  late bool vacuumCleaner;
  @Default('')
  late String howDiscovered;
  @Default('')
  late String residentialComplex;
  @Default('')
  late String housingCoopNumber;
  late SchemeDB? scheme;
}
