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
  @Default('')
  late String measurer;
  @Default([])
  late List<PositionDB> positions;
}
