import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';
import 'package:window_meas/features/editor/data/model/scheme_db.dart';
import 'package:window_meas/features/measurement/data/domain/model/params/panel_thickness_enum.dart';
import 'package:window_meas/features/measurement/data/db/model/expander_db.dart';
import 'package:window_meas/features/measurement/data/domain/model/params/door_opening_type_enum.dart';
import 'package:window_meas/features/measurement/data/domain/model/params/doorstep_option_enum.dart';
import 'package:window_meas/features/measurement/data/domain/model/params/doorstep_type_enum.dart';
import 'package:window_meas/features/measurement/data/domain/model/params/panel_type_enum.dart';
import 'package:window_meas/features/measurement/data/domain/model/params/quarter_position_enum.dart';
import 'package:window_meas/features/measurement/data/domain/model/params/rubber_color_enum.dart';
import 'package:window_meas/features/measurement/data/domain/model/params/stand_profile_enum.dart';
import 'package:window_meas/features/measurement/data/domain/model/params/windowsill_depth_enum.dart';
import 'package:window_meas/features/measurement/data/domain/model/params/windowsill_type_enum.dart';

part 'position_db.g.dart';

@embedded
class PositionDB {
  @Default('')
  late String id;
  late SchemeDB? scheme;
  @Default([])
  late List<SchemeDB> flexibles;
  late String? photoPath;
  @Default('')
  late String quarterSize;
  @Enumerated(EnumType.name)
  @Default(QuarterPosition.none)
  late QuarterPosition quarterPosition;
  @Default(false)
  late bool staticCalculation;
  @Default('')
  late String profileSystem;
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
  @Default([])
  late List<ExpanderDB> expanders;
  @Default([])
  late List<ConnectorDB> connectors;
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
  @Default('')
  late String positionComment;
  @Default('')
  late String schemeComment;
}
