import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';
import 'package:window_meas/features/editor/data/model/line_db.dart';
import 'package:window_meas/features/editor/data/model/polygon_db.dart';
import 'package:window_meas/features/editor/data/model/segment_db.dart';
import 'package:window_meas/features/editor/opening_type/data/opening_type_record_db.dart';
import 'package:window_meas/features/editor/data/model/scheme_db.dart';
import 'package:window_meas/features/measurement/data/db/model/expander_option_db.dart';
import 'package:window_meas/features/measurement/data/db/model/position_db.dart';
import 'package:window_meas/features/measurement/data/domain/model/params/assembly_type_enum.dart';
import 'package:window_meas/features/measurement/data/domain/model/params/building_type_enum.dart';
import 'package:window_meas/features/measurement/data/domain/model/params/elevator_options_enum.dart';
import 'package:window_meas/features/measurement/data/domain/model/params/flat_status_enum.dart';
import 'package:window_meas/features/measurement/data/domain/model/params/windowsill_extension_enum.dart';
import 'package:window_meas/features/editor/filling_type/data/filling_type_record_db.dart';
import 'package:window_meas/features/editor/data/model/arch_db.dart';

part 'measurement_db.g.dart';

@collection
class MeasurementDB {
  Id? localId;
  int? remoteId;
  @Index(unique: true)
  late String id;
  late DateTime date;
  late String? pdfFile;
  @Default('')
  late String leadId;
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
  @Default('')
  late String screedDisassemblyPrice;
  @Default(false)
  late bool gridDisassembly;
  @Default('')
  late String gridDisassemblyPrice;
  @Default(false)
  late bool roofDisassembly;
  @Default('')
  late String roofDisassemblyPrice;
  @Default(false)
  late bool railingDisassembly;
  @Default('')
  late String railingDisassemblyPrice;
  @Default(false)
  late bool balconyDisassembly;
  @Default('')
  late String balconyDisassemblyPrice;
  @Default(false)
  late bool delivery;
  @Default('')
  late String deliveryPrice;
  @Default(false)
  late bool unloading;
  @Default('')
  late String unloadingPrice;
  @Default(false)
  late bool garbageRemoval;
  @Default('')
  late String garbageRemovalPrice;
  @Default(false)
  late bool sealing;
  @Default('')
  late String sealingPrice;
  @Enumerated(EnumType.name)
  @Default(BuildingType.none)
  late BuildingType buildingType;
  @Enumerated(EnumType.name)
  @Default(FlatStatus.none)
  late FlatStatus flatStatus;
  @Enumerated(EnumType.name)
  @Default(ElevatorOptions.none)
  late ElevatorOptions elevator;

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
  @Default('')
  late String measurer;
  @Default([])
  late List<PositionDB> positions;

  // Other work
  @Default(false)
  late bool parapetReinforcement;
  @Default('')
  late String parapetReinforcementPrice;

  @Default(false)
  late bool slabExtension;
  @Default('')
  late String slabExtensionPrice;
  @Default('')
  late String slabExtensionInstallation;
  @Default('')
  late String slabExtensionInsulation;
  @Default('')
  late String slabExtensionFlooring;
  @Default('')
  late String slabExtensionLift;
  @Default('')
  late String slabExtensionSheathing;
  @Default('')
  late String slabExtensionDelivery;
  @Enumerated(EnumType.name)
  @Default(WindowsillExtension.none)
  late WindowsillExtension windowsillExtension;
  @Default('')
  late String windowsillExtensionPrice;
  @Default('')
  late String windowsillExtensionWelding;
  @Default('')
  late String windowsillExtensionSheathing;
  @Default('')
  late String windowsillExtensionInsulation;
  @Default(false)
  late bool railingSheathing;
  @Default('')
  late String railingSheathingInside;
  @Default('')
  late String railingSheathingOutside;
  @Default('')
  late String railingSheathingInsulation;
  @Default(false)
  late bool ceiling;
  @Default('')
  late String ceilingPrice;
  @Default('')
  late String ceilingInsulation;
  @Default(false)
  late bool loadBearingWall;
  @Default('')
  late String loadBearingWallSheathing;

  @Default(false)
  late bool insulation;
  @Default('')
  late String insulationPrice;
  @Default(false)
  late bool flooring;
  @Default('')
  late String flooringCovering;
  @Default('')
  late String flooringPrice;
}
