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

@freezed
class Measurement with _$Measurement {
  const Measurement._();

  const factory Measurement({
    int? localId,
    int? remoteId,
    required String id,
    required DateTime date,
    required String? pdfFile,

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
    required bool delivery,
    required String deliveryPrice,
    required bool unloading,
    required String unloadingPrice,
    required bool garbageRemoval,
    required String garbageRemovalPrice,
    required bool sealing,
    required String sealingPrice,
    required bool vacuumCleaner,
    required String estimatedAssemblyTime,

    // Other work
    required bool disassembly,
    required bool screedDisassembly,
    required String screedDisassemblyPrice,
    required bool gridDisassembly,
    required String gridDisassemblyPrice,
    required bool roofDisassembly,
    required String roofDisassemblyPrice,
    required bool railingDisassembly,
    required String railingDisassemblyPrice,
    required bool balconyDisassembly,
    required String balconyDisassemblyPrice,
    required bool parapetReinforcement,
    required String parapetReinforcementPrice,
    required bool slabExtension,
    required String slabExtensionPrice,
    required String slabExtensionInstallation,
    required String slabExtensionInsulation,
    required String slabExtensionFlooring,
    required String slabExtensionLift,
    required String slabExtensionSheathing,
    required String slabExtensionDelivery,
    //
    required WindowsillExtension windowsillExtension,
    required String windowsillExtensionPrice,
    required String windowsillExtensionWelding,
    required String windowsillExtensionSheathing,
    required String windowsillExtensionInsulation,
    //
    required bool railingSheathing,
    required String railingSheathingInside,
    required String railingSheathingOutside,
    required String railingSheathingInsulation,
    //
    required bool ceiling,
    required String ceilingPrice,
    required String ceilingInsulation,
    required bool loadBearingWall,
    required String loadBearingWallSheathing,
    required bool insulation,
    required String insulationPrice,
    required bool flooring,
    required String flooringCovering,
    required String flooringPrice,

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

        delivery: false,
        deliveryPrice: '',
        unloading: false,
        unloadingPrice: '',
        buildingType: BuildingType.none,
        flatStatus: FlatStatus.none,
        garbageRemoval: false,
        garbageRemovalPrice: '',
        elevator: ElevatorOptions.none,
        positions: [
          Position.initial(),
        ],
        sealing: false,
        sealingPrice: '',
        cost: '',
        prepayment: '',
        comment: '',
        estimatedAssemblyTime: '',
        vacuumCleaner: false,
        howDiscovered: '',
        residentialComplex: '',
        housingCoopNumber: '',

        // Other work
        disassembly: false,
        screedDisassembly: false,
        screedDisassemblyPrice: '',
        gridDisassembly: false,
        gridDisassemblyPrice: '',
        roofDisassembly: false,
        roofDisassemblyPrice: '',
        railingDisassembly: false,
        railingDisassemblyPrice: '',
        balconyDisassembly: false,
        balconyDisassemblyPrice: '',
        parapetReinforcement: false,
        parapetReinforcementPrice: '',
        slabExtension: false,
        slabExtensionPrice: '',
        slabExtensionInstallation: '',
        slabExtensionInsulation: '',
        slabExtensionFlooring: '',
        slabExtensionLift: '',
        slabExtensionSheathing: '',
        slabExtensionDelivery: '',
        windowsillExtension: WindowsillExtension.none,
        windowsillExtensionPrice: '',
        windowsillExtensionWelding: '',
        windowsillExtensionSheathing: '',
        windowsillExtensionInsulation: '',
        railingSheathing: false,
        railingSheathingInside: '',
        railingSheathingOutside: '',
        railingSheathingInsulation: '',
        ceiling: false,
        ceilingPrice: '',
        ceilingInsulation: '',
        loadBearingWall: false,
        loadBearingWallSheathing: '',
        insulation: false,
        insulationPrice: '',
        flooring: false,
        flooringCovering: '',
        flooringPrice: '',
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
    ..screedDisassemblyPrice = screedDisassemblyPrice
    ..gridDisassembly = gridDisassembly
    ..gridDisassemblyPrice = gridDisassemblyPrice
    ..roofDisassembly = roofDisassembly
    ..roofDisassemblyPrice = roofDisassemblyPrice
    ..railingDisassembly = railingDisassembly
    ..railingDisassemblyPrice = railingDisassemblyPrice
    ..balconyDisassembly = balconyDisassembly
    ..balconyDisassemblyPrice = balconyDisassemblyPrice
    ..delivery = delivery
    ..deliveryPrice = deliveryPrice
    ..unloading = unloading
    ..unloadingPrice = unloadingPrice
    ..garbageRemoval = garbageRemoval
    ..garbageRemovalPrice = garbageRemovalPrice
    ..sealing = sealing
    ..sealingPrice = sealingPrice
    ..buildingType = buildingType
    ..flatStatus = flatStatus
    ..elevator = elevator
    ..cost = cost
    ..prepayment = prepayment
    ..comment = comment
    ..estimatedAssemblyTime = estimatedAssemblyTime
    ..vacuumCleaner = vacuumCleaner
    ..howDiscovered = howDiscovered
    ..residentialComplex = residentialComplex
    ..housingCoopNumber = housingCoopNumber
    ..measurer = measurer
    ..positions = positions.map((e) => e.toDB()).toList()

    // Other work
    ..parapetReinforcement = parapetReinforcement
    ..parapetReinforcementPrice = parapetReinforcementPrice
    ..slabExtension = slabExtension
    ..slabExtensionPrice = slabExtensionPrice
    ..slabExtensionInstallation = slabExtensionInstallation
    ..slabExtensionInsulation = slabExtensionInsulation
    ..slabExtensionFlooring = slabExtensionFlooring
    ..slabExtensionLift = slabExtensionLift
    ..slabExtensionSheathing = slabExtensionSheathing
    ..slabExtensionDelivery = slabExtensionDelivery
    ..windowsillExtension = windowsillExtension
    ..windowsillExtensionPrice = windowsillExtensionPrice
    ..windowsillExtensionWelding = windowsillExtensionWelding
    ..windowsillExtensionSheathing = windowsillExtensionSheathing
    ..windowsillExtensionInsulation = windowsillExtensionInsulation
    ..railingSheathing = railingSheathing
    ..railingSheathingInside = railingSheathingInside
    ..railingSheathingOutside = railingSheathingOutside
    ..railingSheathingInsulation = railingSheathingInsulation
    ..ceiling = ceiling
    ..ceilingPrice = ceilingPrice
    ..ceilingInsulation = ceilingInsulation
    ..loadBearingWall = loadBearingWall
    ..loadBearingWallSheathing = loadBearingWallSheathing
    ..insulation = insulation
    ..insulationPrice = insulationPrice
    ..flooring = flooring
    ..flooringCovering = flooringCovering
    ..flooringPrice = flooringPrice;

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
        screedDisassemblyPrice: db.screedDisassemblyPrice,
        gridDisassembly: db.gridDisassembly,
        gridDisassemblyPrice: db.gridDisassemblyPrice,
        roofDisassembly: db.roofDisassembly,
        roofDisassemblyPrice: db.roofDisassemblyPrice,
        railingDisassembly: db.railingDisassembly,
        railingDisassemblyPrice: db.railingDisassemblyPrice,
        balconyDisassembly: db.balconyDisassembly,
        balconyDisassemblyPrice: db.balconyDisassemblyPrice,
        delivery: db.delivery,
        deliveryPrice: db.deliveryPrice,
        unloading: db.unloading,
        unloadingPrice: db.unloadingPrice,
        sealing: db.sealing,
        sealingPrice: db.sealingPrice,
        garbageRemoval: db.garbageRemoval,
        garbageRemovalPrice: db.garbageRemovalPrice,
        buildingType: db.buildingType,
        flatStatus: db.flatStatus,
        elevator: db.elevator,
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

        // Other work
        parapetReinforcement: db.parapetReinforcement,
        parapetReinforcementPrice: db.parapetReinforcementPrice,

        slabExtension: db.slabExtension,
        slabExtensionPrice: db.slabExtensionPrice,
        slabExtensionInstallation: db.slabExtensionInstallation,
        slabExtensionInsulation: db.slabExtensionInsulation,
        slabExtensionFlooring: db.slabExtensionFlooring,
        slabExtensionLift: db.slabExtensionLift,
        slabExtensionSheathing: db.slabExtensionSheathing,
        slabExtensionDelivery: db.slabExtensionDelivery,
        windowsillExtension: db.windowsillExtension,
        windowsillExtensionPrice: db.windowsillExtensionPrice,
        windowsillExtensionWelding: db.windowsillExtensionWelding,
        windowsillExtensionSheathing: db.windowsillExtensionSheathing,
        windowsillExtensionInsulation: db.windowsillExtensionInsulation,
        railingSheathing: db.railingSheathing,
        railingSheathingInside: db.railingSheathingInside,
        railingSheathingOutside: db.railingSheathingOutside,
        railingSheathingInsulation: db.railingSheathingInsulation,
        ceiling: db.ceiling,
        ceilingPrice: db.ceilingPrice,
        ceilingInsulation: db.ceilingInsulation,
        loadBearingWall: db.loadBearingWall,
        loadBearingWallSheathing: db.loadBearingWallSheathing,
        insulation: db.insulation,
        insulationPrice: db.insulationPrice,
        flooring: db.flooring,
        flooringCovering: db.flooringCovering,
        flooringPrice: db.flooringPrice,
      );

  String get name =>
      '${Localization.l10n.measurement} ${DateFormat('dd.MM.yyyy').format(date)}. ${Localization.l10n.measurer}: $measurer. ${Localization.l10n.client}: $clientName';
}
