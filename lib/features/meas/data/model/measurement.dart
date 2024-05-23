import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';
import 'package:window_meas/features/meas/data/model/measurement_db.dart';
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
import 'package:window_meas/features/meas/data/params/windowsill_type_enum.dart';

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
    ..slopeQuantity = slopeQuantity;

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
      );
}
