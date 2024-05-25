import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';
import 'package:window_meas/features/meas/data/model/measurement_db.dart';
import 'package:window_meas/features/meas/data/params/assembly_type_enum.dart';
import 'package:window_meas/features/meas/data/params/building_type_enum.dart';
import 'package:window_meas/features/meas/data/params/door_opening_type_enum.dart';
import 'package:window_meas/features/meas/data/params/doorstep_option_enum.dart';
import 'package:window_meas/features/meas/data/params/doorstep_type_enum.dart';
import 'package:window_meas/features/meas/data/params/elevator_options_enum.dart';
import 'package:window_meas/features/meas/data/params/expander_option.dart';
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

part 'measurement.freezed.dart';

@freezed
abstract class Measurement with _$Measurement {
  const Measurement._();

  const factory Measurement({
    int? innerId,
    required String id,
    required DateTime date,
    required String clientName,
    required String city,
    required String district,
    required String street,
    required String building,
    required String block,
    required String entrance,
    required String doorphone,
    required String floor,
    required String apartment,
    required String phoneNumberMain,
    required String phoneNumberAdditional,
    required AssemblyType assembly,
    required bool disassembly,
    required bool screedDisassembly,
    required bool gridDisassembly,
    required bool roofDisassembly,
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
    required DoorstepOption doorstep,
    required DoorstepType doorstepType,
    required DoorOpeningType doorOpeningType,
    required String laminationInternal,
    required String laminationExternal,
    required RubberColor rubberColor,
    required StandProfile standProfile,
    required ExpanderOption expanderOption,
    required String glassUnit,
    required PanelType panelType,
    required PanelThickness panelThickness,
    required String furniture,
    required WindowsillType windowsillType,
    required WindowsillDepth windowsillDepth,
    required String windowsillSize,
    required WindowsillConnector windowsillConnector,
    required String windowsillColor,
    required bool windowsillAssembly,
    required String drainageDepth,
    required String drainageWidth,
    required String drainageColor,
    required bool drainageEndCap,
    required String canopyType,
    required String canopySize,
    required String canopyColor,
    required String slopeDepth,
    required String slopeLength,
    required String slopeQuantity,
    required bool parapetReinforcement,
    required WindowsillExtension windowsillExtension,
    required bool slabExtension,
    required bool extensionSheathing,
    required bool insulation,
    required bool sealing,
    required String cost,
    required String prepayment,
    required String comment,
    required String estimatedAssemblyTime,
    required bool vacuumCleaner,
    required String howDiscovered,
    required String residentialComplex,
    required String housingCoopNumber,
  }) = _Measurement;

  factory Measurement.initial() => Measurement(
        id: const Uuid().v4(),
        date: DateTime.now(),
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
        quarterSize: '',
        quarterPosition: QuarterPosition.none,
        staticCalculation: false,
        profileSystem: ProfileSystem.none,
        doorstep: DoorstepOption.none,
        doorstepType: DoorstepType.none,
        doorOpeningType: DoorOpeningType.none,
        laminationInternal: '',
        laminationExternal: '',
        rubberColor: RubberColor.none,
        standProfile: StandProfile.none,
        expanderOption: ExpanderOption.initial(),
        glassUnit: '',
        panelType: PanelType.none,
        panelThickness: PanelThickness.none,
        furniture: '',
        windowsillType: WindowsillType.none,
        windowsillDepth: WindowsillDepth.none,
        windowsillSize: '',
        windowsillConnector: WindowsillConnector.none,
        windowsillColor: '',
        windowsillAssembly: false,
        drainageDepth: '',
        drainageWidth: '',
        drainageColor: '',
        drainageEndCap: false,
        canopyType: '',
        canopySize: '',
        canopyColor: '',
        slopeDepth: '',
        slopeLength: '',
        slopeQuantity: '',
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
    ..innerId = innerId
    ..id = id
    ..date = date
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
    ..quarterSize = quarterSize
    ..quarterPosition = quarterPosition
    ..staticCalculation = staticCalculation
    ..profileSystem = profileSystem
    ..doorstep = doorstep
    ..doorstepType = doorstepType
    ..doorOpeningType = doorOpeningType
    ..laminationInternal = laminationInternal
    ..laminationExternal = laminationExternal
    ..rubberColor = rubberColor
    ..standProfile = standProfile
    ..expanderOption = expanderOption.toDB()
    ..glassUnit = glassUnit
    ..panelType = panelType
    ..panelThickness = panelThickness
    ..furniture = furniture
    ..windowsillType = windowsillType
    ..windowsillDepth = windowsillDepth
    ..windowsillSize = windowsillSize
    ..windowsillConnector = windowsillConnector
    ..windowsillColor = windowsillColor
    ..windowsillAssembly = windowsillAssembly
    ..drainageDepth = drainageDepth
    ..drainageWidth = drainageWidth
    ..drainageColor = drainageColor
    ..drainageEndCap = drainageEndCap
    ..canopyType = canopyType
    ..canopySize = canopySize
    ..canopyColor = canopyColor
    ..slopeDepth = slopeDepth
    ..slopeLength = slopeLength
    ..slopeQuantity = slopeQuantity
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
    ..housingCoopNumber = housingCoopNumber;

  static Measurement fromDB(MeasurementDB db) => Measurement(
        innerId: db.innerId,
        id: db.id,
        date: db.date,
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
        quarterSize: db.quarterSize,
        quarterPosition: db.quarterPosition,
        staticCalculation: db.staticCalculation,
        profileSystem: db.profileSystem,
        doorstep: db.doorstep,
        doorstepType: db.doorstepType,
        doorOpeningType: db.doorOpeningType,
        laminationInternal: db.laminationInternal,
        laminationExternal: db.laminationExternal,
        rubberColor: db.rubberColor,
        standProfile: db.standProfile,
        expanderOption: ExpanderOption.fromDB(db.expanderOption),
        glassUnit: db.glassUnit,
        panelType: db.panelType,
        panelThickness: db.panelThickness,
        furniture: db.furniture,
        windowsillType: db.windowsillType,
        windowsillDepth: db.windowsillDepth,
        windowsillSize: db.windowsillSize,
        windowsillConnector: db.windowsillConnector,
        windowsillColor: db.windowsillColor,
        windowsillAssembly: db.windowsillAssembly,
        drainageDepth: db.drainageDepth,
        drainageWidth: db.drainageWidth,
        drainageColor: db.drainageColor,
        drainageEndCap: db.drainageEndCap,
        canopyType: db.canopyType,
        canopySize: db.canopySize,
        canopyColor: db.canopyColor,
        slopeDepth: db.slopeDepth,
        slopeLength: db.slopeLength,
        slopeQuantity: db.slopeQuantity,
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
      );
}
