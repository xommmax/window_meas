import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';
import 'package:window_meas/features/editor/data/model/scheme.dart';
import 'package:window_meas/features/measurement/data/db/model/position_db.dart';
import 'package:window_meas/features/measurement/data/domain/model/params/door_opening_type_enum.dart';
import 'package:window_meas/features/measurement/data/domain/model/params/doorstep_option_enum.dart';
import 'package:window_meas/features/measurement/data/domain/model/params/doorstep_type_enum.dart';
import 'package:window_meas/features/measurement/data/domain/model/expander_option.dart';
import 'package:window_meas/features/measurement/data/domain/model/params/panel_thickness_enum.dart';
import 'package:window_meas/features/measurement/data/domain/model/params/panel_type_enum.dart';
import 'package:window_meas/features/measurement/data/domain/model/params/quarter_position_enum.dart';
import 'package:window_meas/features/measurement/data/domain/model/params/rubber_color_enum.dart';
import 'package:window_meas/features/measurement/data/domain/model/params/stand_profile_enum.dart';
import 'package:window_meas/features/measurement/data/domain/model/params/windowsill_connector_enum.dart';
import 'package:window_meas/features/measurement/data/domain/model/params/windowsill_depth_enum.dart';
import 'package:window_meas/features/measurement/data/domain/model/params/windowsill_type_enum.dart';

part 'position.freezed.dart';

@freezed
class Position with _$Position {
  const Position._();

  const factory Position({
    required String id,
    required Scheme? scheme,
    required String? photoPath,
    required String quarterSize,
    required QuarterPosition quarterPosition,
    required bool staticCalculation,
    required String profileSystem,
    required DoorOpeningType doorOpeningType,
    required DoorstepOption doorstep,
    required DoorstepType doorstepType,
    required String laminationInternal,
    required String laminationExternal,
    required RubberColor rubberColor,
    required StandProfile standProfile,
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
    required ExpanderOption expanderOption,
  }) = _Position;

  factory Position.initial() => Position(
        id: const Uuid().v4(),
        scheme: null,
        photoPath: null,
        quarterSize: '',
        quarterPosition: QuarterPosition.none,
        staticCalculation: false,
        profileSystem: '',
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

  PositionDB toDB() => PositionDB()
    ..id = id
    ..scheme = scheme?.toDB()
    ..photoPath = photoPath
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

  static Position fromDB(PositionDB db) => Position(
        id: db.id,
        scheme: db.scheme != null ? Scheme.fromDB(db.scheme!) : null,
        photoPath: db.photoPath,
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
