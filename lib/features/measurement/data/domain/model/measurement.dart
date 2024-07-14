import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';
import 'package:window_meas/features/measurement/data/db/model/measurement_db.dart';
import 'package:window_meas/features/measurement/data/domain/model/params/assembly_type_enum.dart';
import 'package:window_meas/features/measurement/data/domain/model/params/building_type_enum.dart';
import 'package:window_meas/features/measurement/data/domain/model/params/elevator_options_enum.dart';
import 'package:window_meas/features/measurement/data/domain/model/params/flat_status_enum.dart';
import 'package:window_meas/features/measurement/data/domain/model/params/windowsill_extension_enum.dart';
import 'package:window_meas/features/measurement/data/domain/model/position.dart';
import 'package:window_meas/l10n/localization.dart';

part 'measurement.freezed.dart';

// !!! After adding or updating the field, don't forget to add/update field in:
// 1. CustomFieldsBuilder
// 2. MeasurementDTO.fromDomain
// 3. MeasurementDTO.toDomain
// 4. add/update field manually in CRM
@freezed
class Measurement with _$Measurement {
  const Measurement._();

  const factory Measurement({
    int? localId,
    int? remoteId,
    required String id,
    required DateTime date,
    required String? pdfFile,

    /* Custom Fields */
    // Client Info
    required String leadId,
    required String clientName,
    required String cost,
    required String prepayment,
    required String phoneNumberMain,
    required String phoneNumberAdditional,
    required String howDiscovered,
    required String comment,
    required String measurer,

    // Address
    required String city,
    required String district,
    required String street,
    required String building,
    required String residentialComplex,
    required String block,
    required String entrance,
    required String doorphone,
    required String floor,
    required String apartment,
    required String housingCoopNumber,

    // Building Info
    required BuildingType buildingType,
    required FlatStatus flatStatus,
    required ElevatorOptions elevator,
    required AssemblyType assembly,
    required bool disassembly,
    required bool screedDisassembly,
    required bool gridDisassembly,
    required bool roofDisassembly,
    required bool delivery,
    required bool unloading,
    required bool garbageRemoval,
    required bool sealing,
    required bool vacuumCleaner,
    required String estimatedAssemblyTime,

    // Other work
    required bool parapetReinforcement,
    required WindowsillExtension windowsillExtension,
    required bool slabExtension,
    required bool extensionSheathing,
    required bool insulation,

    // Positions info
    required List<Position> positions,
  }) = _Measurement;

  factory Measurement.initial({
    required DateTime date,
    required String measurer,
  }) =>
      Measurement(
        id: const Uuid().v4(),
        date: date,
        measurer: measurer,
        pdfFile: null,
        leadId: '',
        clientName: '',
        city: '',
        district: '',
        street: '',
        building: '',
        block: '',
        entrance: '',
        doorphone: '',
        floor: '',
        apartment: '',
        phoneNumberMain: '',
        phoneNumberAdditional: '',
        assembly: AssemblyType.none,
        disassembly: false,
        screedDisassembly: false,
        gridDisassembly: false,
        roofDisassembly: false,
        delivery: false,
        unloading: false,
        buildingType: BuildingType.none,
        flatStatus: FlatStatus.none,
        garbageRemoval: false,
        elevator: ElevatorOptions.none,
        positions: [
          Position.initial(),
        ],
        parapetReinforcement: false,
        windowsillExtension: WindowsillExtension.none,
        slabExtension: false,
        extensionSheathing: false,
        insulation: false,
        sealing: false,
        cost: '',
        prepayment: '',
        comment: '',
        estimatedAssemblyTime: '',
        vacuumCleaner: false,
        howDiscovered: '',
        residentialComplex: '',
        housingCoopNumber: '',
      );

  MeasurementDB toDB() => MeasurementDB()
    ..localId = localId
    ..remoteId = remoteId
    ..id = id
    ..date = date
    ..pdfFile = pdfFile
    ..leadId = leadId
    ..clientName = clientName
    ..city = city
    ..district = district
    ..street = street
    ..building = building
    ..block = block
    ..entrance = entrance
    ..doorphone = doorphone
    ..floor = floor
    ..apartment = apartment
    ..phoneNumberMain = phoneNumberMain
    ..phoneNumberAdditional = phoneNumberAdditional
    ..assembly = assembly
    ..disassembly = disassembly
    ..screedDisassembly = screedDisassembly
    ..gridDisassembly = gridDisassembly
    ..roofDisassembly = roofDisassembly
    ..delivery = delivery
    ..unloading = unloading
    ..buildingType = buildingType
    ..flatStatus = flatStatus
    ..garbageRemoval = garbageRemoval
    ..elevator = elevator
    ..parapetReinforcement = parapetReinforcement
    ..windowsillExtension = windowsillExtension
    ..slabExtension = slabExtension
    ..extensionSheathing = extensionSheathing
    ..insulation = insulation
    ..sealing = sealing
    ..cost = cost
    ..prepayment = prepayment
    ..comment = comment
    ..estimatedAssemblyTime = estimatedAssemblyTime
    ..vacuumCleaner = vacuumCleaner
    ..howDiscovered = howDiscovered
    ..residentialComplex = residentialComplex
    ..housingCoopNumber = housingCoopNumber
    ..measurer = measurer
    ..positions = positions.map((e) => e.toDB()).toList();

  static Measurement fromDB(MeasurementDB db) => Measurement(
        localId: db.localId,
        remoteId: db.remoteId,
        id: db.id,
        date: db.date,
        pdfFile: db.pdfFile,
        leadId: db.leadId,
        clientName: db.clientName,
        city: db.city,
        district: db.district,
        street: db.street,
        building: db.building,
        block: db.block,
        entrance: db.entrance,
        doorphone: db.doorphone,
        floor: db.floor,
        apartment: db.apartment,
        phoneNumberMain: db.phoneNumberMain,
        phoneNumberAdditional: db.phoneNumberAdditional,
        assembly: db.assembly,
        disassembly: db.disassembly,
        screedDisassembly: db.screedDisassembly,
        gridDisassembly: db.gridDisassembly,
        roofDisassembly: db.roofDisassembly,
        delivery: db.delivery,
        unloading: db.unloading,
        buildingType: db.buildingType,
        flatStatus: db.flatStatus,
        garbageRemoval: db.garbageRemoval,
        elevator: db.elevator,
        parapetReinforcement: db.parapetReinforcement,
        windowsillExtension: db.windowsillExtension,
        slabExtension: db.slabExtension,
        extensionSheathing: db.extensionSheathing,
        insulation: db.insulation,
        sealing: db.sealing,
        cost: db.cost,
        prepayment: db.prepayment,
        comment: db.comment,
        estimatedAssemblyTime: db.estimatedAssemblyTime,
        vacuumCleaner: db.vacuumCleaner,
        howDiscovered: db.howDiscovered,
        residentialComplex: db.residentialComplex,
        housingCoopNumber: db.housingCoopNumber,
        measurer: db.measurer,
        positions: db.positions.map((e) => Position.fromDB(e)).toList(),
      );

  String get name =>
      '${Localization.l10n.measurement} ${DateFormat('dd.MM.yyyy').format(date)}. ${Localization.l10n.measurer}: $measurer. ${Localization.l10n.client}: $clientName';
}
