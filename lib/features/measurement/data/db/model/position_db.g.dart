// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'position_db.dart';

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const PositionDBSchema = Schema(
  name: r'PositionDB',
  id: 3988923042127212376,
  properties: {
    r'canopyColor': PropertySchema(
      id: 0,
      name: r'canopyColor',
      type: IsarType.string,
    ),
    r'canopySize': PropertySchema(
      id: 1,
      name: r'canopySize',
      type: IsarType.string,
    ),
    r'canopyType': PropertySchema(
      id: 2,
      name: r'canopyType',
      type: IsarType.string,
    ),
    r'doorOpeningType': PropertySchema(
      id: 3,
      name: r'doorOpeningType',
      type: IsarType.string,
      enumMap: _PositionDBdoorOpeningTypeEnumValueMap,
    ),
    r'doorstep': PropertySchema(
      id: 4,
      name: r'doorstep',
      type: IsarType.string,
      enumMap: _PositionDBdoorstepEnumValueMap,
    ),
    r'doorstepType': PropertySchema(
      id: 5,
      name: r'doorstepType',
      type: IsarType.string,
      enumMap: _PositionDBdoorstepTypeEnumValueMap,
    ),
    r'drainageColor': PropertySchema(
      id: 6,
      name: r'drainageColor',
      type: IsarType.string,
    ),
    r'drainageDepth': PropertySchema(
      id: 7,
      name: r'drainageDepth',
      type: IsarType.string,
    ),
    r'drainageEndCap': PropertySchema(
      id: 8,
      name: r'drainageEndCap',
      type: IsarType.bool,
    ),
    r'drainageWidth': PropertySchema(
      id: 9,
      name: r'drainageWidth',
      type: IsarType.string,
    ),
    r'expanderOption': PropertySchema(
      id: 10,
      name: r'expanderOption',
      type: IsarType.object,
      target: r'ExpanderOptionDB',
    ),
    r'flexibles': PropertySchema(
      id: 11,
      name: r'flexibles',
      type: IsarType.objectList,
      target: r'SchemeDB',
    ),
    r'furniture': PropertySchema(
      id: 12,
      name: r'furniture',
      type: IsarType.string,
    ),
    r'glassUnit': PropertySchema(
      id: 13,
      name: r'glassUnit',
      type: IsarType.string,
    ),
    r'id': PropertySchema(
      id: 14,
      name: r'id',
      type: IsarType.string,
    ),
    r'laminationExternal': PropertySchema(
      id: 15,
      name: r'laminationExternal',
      type: IsarType.string,
    ),
    r'laminationInternal': PropertySchema(
      id: 16,
      name: r'laminationInternal',
      type: IsarType.string,
    ),
    r'panelThickness': PropertySchema(
      id: 17,
      name: r'panelThickness',
      type: IsarType.string,
      enumMap: _PositionDBpanelThicknessEnumValueMap,
    ),
    r'panelType': PropertySchema(
      id: 18,
      name: r'panelType',
      type: IsarType.string,
      enumMap: _PositionDBpanelTypeEnumValueMap,
    ),
    r'photoPath': PropertySchema(
      id: 19,
      name: r'photoPath',
      type: IsarType.string,
    ),
    r'positionComment': PropertySchema(
      id: 20,
      name: r'positionComment',
      type: IsarType.string,
    ),
    r'profileSystem': PropertySchema(
      id: 21,
      name: r'profileSystem',
      type: IsarType.string,
    ),
    r'quarterPosition': PropertySchema(
      id: 22,
      name: r'quarterPosition',
      type: IsarType.string,
      enumMap: _PositionDBquarterPositionEnumValueMap,
    ),
    r'quarterSize': PropertySchema(
      id: 23,
      name: r'quarterSize',
      type: IsarType.string,
    ),
    r'rubberColor': PropertySchema(
      id: 24,
      name: r'rubberColor',
      type: IsarType.string,
      enumMap: _PositionDBrubberColorEnumValueMap,
    ),
    r'scheme': PropertySchema(
      id: 25,
      name: r'scheme',
      type: IsarType.object,
      target: r'SchemeDB',
    ),
    r'schemeComment': PropertySchema(
      id: 26,
      name: r'schemeComment',
      type: IsarType.string,
    ),
    r'slopeDepth': PropertySchema(
      id: 27,
      name: r'slopeDepth',
      type: IsarType.string,
    ),
    r'slopeLength': PropertySchema(
      id: 28,
      name: r'slopeLength',
      type: IsarType.string,
    ),
    r'slopeQuantity': PropertySchema(
      id: 29,
      name: r'slopeQuantity',
      type: IsarType.string,
    ),
    r'standProfile': PropertySchema(
      id: 30,
      name: r'standProfile',
      type: IsarType.string,
      enumMap: _PositionDBstandProfileEnumValueMap,
    ),
    r'staticCalculation': PropertySchema(
      id: 31,
      name: r'staticCalculation',
      type: IsarType.bool,
    ),
    r'windowsillAssembly': PropertySchema(
      id: 32,
      name: r'windowsillAssembly',
      type: IsarType.bool,
    ),
    r'windowsillColor': PropertySchema(
      id: 33,
      name: r'windowsillColor',
      type: IsarType.string,
    ),
    r'windowsillConnector': PropertySchema(
      id: 34,
      name: r'windowsillConnector',
      type: IsarType.string,
      enumMap: _PositionDBwindowsillConnectorEnumValueMap,
    ),
    r'windowsillDepth': PropertySchema(
      id: 35,
      name: r'windowsillDepth',
      type: IsarType.string,
      enumMap: _PositionDBwindowsillDepthEnumValueMap,
    ),
    r'windowsillSize': PropertySchema(
      id: 36,
      name: r'windowsillSize',
      type: IsarType.string,
    ),
    r'windowsillType': PropertySchema(
      id: 37,
      name: r'windowsillType',
      type: IsarType.string,
      enumMap: _PositionDBwindowsillTypeEnumValueMap,
    )
  },
  estimateSize: _positionDBEstimateSize,
  serialize: _positionDBSerialize,
  deserialize: _positionDBDeserialize,
  deserializeProp: _positionDBDeserializeProp,
);

int _positionDBEstimateSize(
  PositionDB object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.canopyColor.length * 3;
  bytesCount += 3 + object.canopySize.length * 3;
  bytesCount += 3 + object.canopyType.length * 3;
  bytesCount += 3 + object.doorOpeningType.name.length * 3;
  bytesCount += 3 + object.doorstep.name.length * 3;
  bytesCount += 3 + object.doorstepType.name.length * 3;
  bytesCount += 3 + object.drainageColor.length * 3;
  bytesCount += 3 + object.drainageDepth.length * 3;
  bytesCount += 3 + object.drainageWidth.length * 3;
  bytesCount += 3 +
      ExpanderOptionDBSchema.estimateSize(
          object.expanderOption, allOffsets[ExpanderOptionDB]!, allOffsets);
  bytesCount += 3 + object.flexibles.length * 3;
  {
    final offsets = allOffsets[SchemeDB]!;
    for (var i = 0; i < object.flexibles.length; i++) {
      final value = object.flexibles[i];
      bytesCount += SchemeDBSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  bytesCount += 3 + object.furniture.length * 3;
  bytesCount += 3 + object.glassUnit.length * 3;
  bytesCount += 3 + object.id.length * 3;
  bytesCount += 3 + object.laminationExternal.length * 3;
  bytesCount += 3 + object.laminationInternal.length * 3;
  bytesCount += 3 + object.panelThickness.name.length * 3;
  bytesCount += 3 + object.panelType.name.length * 3;
  {
    final value = object.photoPath;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.positionComment.length * 3;
  bytesCount += 3 + object.profileSystem.length * 3;
  bytesCount += 3 + object.quarterPosition.name.length * 3;
  bytesCount += 3 + object.quarterSize.length * 3;
  bytesCount += 3 + object.rubberColor.name.length * 3;
  {
    final value = object.scheme;
    if (value != null) {
      bytesCount += 3 +
          SchemeDBSchema.estimateSize(value, allOffsets[SchemeDB]!, allOffsets);
    }
  }
  bytesCount += 3 + object.schemeComment.length * 3;
  bytesCount += 3 + object.slopeDepth.length * 3;
  bytesCount += 3 + object.slopeLength.length * 3;
  bytesCount += 3 + object.slopeQuantity.length * 3;
  bytesCount += 3 + object.standProfile.name.length * 3;
  bytesCount += 3 + object.windowsillColor.length * 3;
  bytesCount += 3 + object.windowsillConnector.name.length * 3;
  bytesCount += 3 + object.windowsillDepth.name.length * 3;
  bytesCount += 3 + object.windowsillSize.length * 3;
  bytesCount += 3 + object.windowsillType.name.length * 3;
  return bytesCount;
}

void _positionDBSerialize(
  PositionDB object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.canopyColor);
  writer.writeString(offsets[1], object.canopySize);
  writer.writeString(offsets[2], object.canopyType);
  writer.writeString(offsets[3], object.doorOpeningType.name);
  writer.writeString(offsets[4], object.doorstep.name);
  writer.writeString(offsets[5], object.doorstepType.name);
  writer.writeString(offsets[6], object.drainageColor);
  writer.writeString(offsets[7], object.drainageDepth);
  writer.writeBool(offsets[8], object.drainageEndCap);
  writer.writeString(offsets[9], object.drainageWidth);
  writer.writeObject<ExpanderOptionDB>(
    offsets[10],
    allOffsets,
    ExpanderOptionDBSchema.serialize,
    object.expanderOption,
  );
  writer.writeObjectList<SchemeDB>(
    offsets[11],
    allOffsets,
    SchemeDBSchema.serialize,
    object.flexibles,
  );
  writer.writeString(offsets[12], object.furniture);
  writer.writeString(offsets[13], object.glassUnit);
  writer.writeString(offsets[14], object.id);
  writer.writeString(offsets[15], object.laminationExternal);
  writer.writeString(offsets[16], object.laminationInternal);
  writer.writeString(offsets[17], object.panelThickness.name);
  writer.writeString(offsets[18], object.panelType.name);
  writer.writeString(offsets[19], object.photoPath);
  writer.writeString(offsets[20], object.positionComment);
  writer.writeString(offsets[21], object.profileSystem);
  writer.writeString(offsets[22], object.quarterPosition.name);
  writer.writeString(offsets[23], object.quarterSize);
  writer.writeString(offsets[24], object.rubberColor.name);
  writer.writeObject<SchemeDB>(
    offsets[25],
    allOffsets,
    SchemeDBSchema.serialize,
    object.scheme,
  );
  writer.writeString(offsets[26], object.schemeComment);
  writer.writeString(offsets[27], object.slopeDepth);
  writer.writeString(offsets[28], object.slopeLength);
  writer.writeString(offsets[29], object.slopeQuantity);
  writer.writeString(offsets[30], object.standProfile.name);
  writer.writeBool(offsets[31], object.staticCalculation);
  writer.writeBool(offsets[32], object.windowsillAssembly);
  writer.writeString(offsets[33], object.windowsillColor);
  writer.writeString(offsets[34], object.windowsillConnector.name);
  writer.writeString(offsets[35], object.windowsillDepth.name);
  writer.writeString(offsets[36], object.windowsillSize);
  writer.writeString(offsets[37], object.windowsillType.name);
}

PositionDB _positionDBDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = PositionDB();
  object.canopyColor = reader.readString(offsets[0]);
  object.canopySize = reader.readString(offsets[1]);
  object.canopyType = reader.readString(offsets[2]);
  object.doorOpeningType = _PositionDBdoorOpeningTypeValueEnumMap[
          reader.readStringOrNull(offsets[3])] ??
      DoorOpeningType.none;
  object.doorstep =
      _PositionDBdoorstepValueEnumMap[reader.readStringOrNull(offsets[4])] ??
          DoorstepOption.none;
  object.doorstepType = _PositionDBdoorstepTypeValueEnumMap[
          reader.readStringOrNull(offsets[5])] ??
      DoorstepType.none;
  object.drainageColor = reader.readString(offsets[6]);
  object.drainageDepth = reader.readString(offsets[7]);
  object.drainageEndCap = reader.readBool(offsets[8]);
  object.drainageWidth = reader.readString(offsets[9]);
  object.expanderOption = reader.readObjectOrNull<ExpanderOptionDB>(
        offsets[10],
        ExpanderOptionDBSchema.deserialize,
        allOffsets,
      ) ??
      ExpanderOptionDB();
  object.flexibles = reader.readObjectList<SchemeDB>(
        offsets[11],
        SchemeDBSchema.deserialize,
        allOffsets,
        SchemeDB(),
      ) ??
      [];
  object.furniture = reader.readString(offsets[12]);
  object.glassUnit = reader.readString(offsets[13]);
  object.id = reader.readString(offsets[14]);
  object.laminationExternal = reader.readString(offsets[15]);
  object.laminationInternal = reader.readString(offsets[16]);
  object.panelThickness = _PositionDBpanelThicknessValueEnumMap[
          reader.readStringOrNull(offsets[17])] ??
      PanelThickness.none;
  object.panelType =
      _PositionDBpanelTypeValueEnumMap[reader.readStringOrNull(offsets[18])] ??
          PanelType.none;
  object.photoPath = reader.readStringOrNull(offsets[19]);
  object.positionComment = reader.readString(offsets[20]);
  object.profileSystem = reader.readString(offsets[21]);
  object.quarterPosition = _PositionDBquarterPositionValueEnumMap[
          reader.readStringOrNull(offsets[22])] ??
      QuarterPosition.none;
  object.quarterSize = reader.readString(offsets[23]);
  object.rubberColor = _PositionDBrubberColorValueEnumMap[
          reader.readStringOrNull(offsets[24])] ??
      RubberColor.none;
  object.scheme = reader.readObjectOrNull<SchemeDB>(
    offsets[25],
    SchemeDBSchema.deserialize,
    allOffsets,
  );
  object.schemeComment = reader.readString(offsets[26]);
  object.slopeDepth = reader.readString(offsets[27]);
  object.slopeLength = reader.readString(offsets[28]);
  object.slopeQuantity = reader.readString(offsets[29]);
  object.standProfile = _PositionDBstandProfileValueEnumMap[
          reader.readStringOrNull(offsets[30])] ??
      StandProfile.none;
  object.staticCalculation = reader.readBool(offsets[31]);
  object.windowsillAssembly = reader.readBool(offsets[32]);
  object.windowsillColor = reader.readString(offsets[33]);
  object.windowsillConnector = _PositionDBwindowsillConnectorValueEnumMap[
          reader.readStringOrNull(offsets[34])] ??
      WindowsillConnector.none;
  object.windowsillDepth = _PositionDBwindowsillDepthValueEnumMap[
          reader.readStringOrNull(offsets[35])] ??
      WindowsillDepth.none;
  object.windowsillSize = reader.readString(offsets[36]);
  object.windowsillType = _PositionDBwindowsillTypeValueEnumMap[
          reader.readStringOrNull(offsets[37])] ??
      WindowsillType.none;
  return object;
}

P _positionDBDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (_PositionDBdoorOpeningTypeValueEnumMap[
              reader.readStringOrNull(offset)] ??
          DoorOpeningType.none) as P;
    case 4:
      return (_PositionDBdoorstepValueEnumMap[
              reader.readStringOrNull(offset)] ??
          DoorstepOption.none) as P;
    case 5:
      return (_PositionDBdoorstepTypeValueEnumMap[
              reader.readStringOrNull(offset)] ??
          DoorstepType.none) as P;
    case 6:
      return (reader.readString(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    case 8:
      return (reader.readBool(offset)) as P;
    case 9:
      return (reader.readString(offset)) as P;
    case 10:
      return (reader.readObjectOrNull<ExpanderOptionDB>(
            offset,
            ExpanderOptionDBSchema.deserialize,
            allOffsets,
          ) ??
          ExpanderOptionDB()) as P;
    case 11:
      return (reader.readObjectList<SchemeDB>(
            offset,
            SchemeDBSchema.deserialize,
            allOffsets,
            SchemeDB(),
          ) ??
          []) as P;
    case 12:
      return (reader.readString(offset)) as P;
    case 13:
      return (reader.readString(offset)) as P;
    case 14:
      return (reader.readString(offset)) as P;
    case 15:
      return (reader.readString(offset)) as P;
    case 16:
      return (reader.readString(offset)) as P;
    case 17:
      return (_PositionDBpanelThicknessValueEnumMap[
              reader.readStringOrNull(offset)] ??
          PanelThickness.none) as P;
    case 18:
      return (_PositionDBpanelTypeValueEnumMap[
              reader.readStringOrNull(offset)] ??
          PanelType.none) as P;
    case 19:
      return (reader.readStringOrNull(offset)) as P;
    case 20:
      return (reader.readString(offset)) as P;
    case 21:
      return (reader.readString(offset)) as P;
    case 22:
      return (_PositionDBquarterPositionValueEnumMap[
              reader.readStringOrNull(offset)] ??
          QuarterPosition.none) as P;
    case 23:
      return (reader.readString(offset)) as P;
    case 24:
      return (_PositionDBrubberColorValueEnumMap[
              reader.readStringOrNull(offset)] ??
          RubberColor.none) as P;
    case 25:
      return (reader.readObjectOrNull<SchemeDB>(
        offset,
        SchemeDBSchema.deserialize,
        allOffsets,
      )) as P;
    case 26:
      return (reader.readString(offset)) as P;
    case 27:
      return (reader.readString(offset)) as P;
    case 28:
      return (reader.readString(offset)) as P;
    case 29:
      return (reader.readString(offset)) as P;
    case 30:
      return (_PositionDBstandProfileValueEnumMap[
              reader.readStringOrNull(offset)] ??
          StandProfile.none) as P;
    case 31:
      return (reader.readBool(offset)) as P;
    case 32:
      return (reader.readBool(offset)) as P;
    case 33:
      return (reader.readString(offset)) as P;
    case 34:
      return (_PositionDBwindowsillConnectorValueEnumMap[
              reader.readStringOrNull(offset)] ??
          WindowsillConnector.none) as P;
    case 35:
      return (_PositionDBwindowsillDepthValueEnumMap[
              reader.readStringOrNull(offset)] ??
          WindowsillDepth.none) as P;
    case 36:
      return (reader.readString(offset)) as P;
    case 37:
      return (_PositionDBwindowsillTypeValueEnumMap[
              reader.readStringOrNull(offset)] ??
          WindowsillType.none) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _PositionDBdoorOpeningTypeEnumValueMap = {
  r'none': r'none',
  r'inward': r'inward',
  r'outward': r'outward',
};
const _PositionDBdoorOpeningTypeValueEnumMap = {
  r'none': DoorOpeningType.none,
  r'inward': DoorOpeningType.inward,
  r'outward': DoorOpeningType.outward,
};
const _PositionDBdoorstepEnumValueMap = {
  r'none': r'none',
  r'present': r'present',
  r'absent': r'absent',
};
const _PositionDBdoorstepValueEnumMap = {
  r'none': DoorstepOption.none,
  r'present': DoorstepOption.present,
  r'absent': DoorstepOption.absent,
};
const _PositionDBdoorstepTypeEnumValueMap = {
  r'none': r'none',
  r'frame': r'frame',
  r'aluminumLow': r'aluminumLow',
  r'aluminumHigh': r'aluminumHigh',
};
const _PositionDBdoorstepTypeValueEnumMap = {
  r'none': DoorstepType.none,
  r'frame': DoorstepType.frame,
  r'aluminumLow': DoorstepType.aluminumLow,
  r'aluminumHigh': DoorstepType.aluminumHigh,
};
const _PositionDBpanelThicknessEnumValueMap = {
  r'none': r'none',
  r'th24': r'th24',
  r'th32': r'th32',
  r'th40': r'th40',
};
const _PositionDBpanelThicknessValueEnumMap = {
  r'none': PanelThickness.none,
  r'th24': PanelThickness.th24,
  r'th32': PanelThickness.th32,
  r'th40': PanelThickness.th40,
};
const _PositionDBpanelTypeEnumValueMap = {
  r'none': r'none',
  r'sandwich': r'sandwich',
  r'metallized': r'metallized',
  r'whiteOneLaminated': r'whiteOneLaminated',
  r'whiteTwoLaminated': r'whiteTwoLaminated',
};
const _PositionDBpanelTypeValueEnumMap = {
  r'none': PanelType.none,
  r'sandwich': PanelType.sandwich,
  r'metallized': PanelType.metallized,
  r'whiteOneLaminated': PanelType.whiteOneLaminated,
  r'whiteTwoLaminated': PanelType.whiteTwoLaminated,
};
const _PositionDBquarterPositionEnumValueMap = {
  r'none': r'none',
  r'top': r'top',
  r'topBottom': r'topBottom',
  r'topSides': r'topSides',
  r'sides': r'sides',
  r'all': r'all',
};
const _PositionDBquarterPositionValueEnumMap = {
  r'none': QuarterPosition.none,
  r'top': QuarterPosition.top,
  r'topBottom': QuarterPosition.topBottom,
  r'topSides': QuarterPosition.topSides,
  r'sides': QuarterPosition.sides,
  r'all': QuarterPosition.all,
};
const _PositionDBrubberColorEnumValueMap = {
  r'none': r'none',
  r'black': r'black',
  r'gray': r'gray',
  r'caramel': r'caramel',
};
const _PositionDBrubberColorValueEnumMap = {
  r'none': RubberColor.none,
  r'black': RubberColor.black,
  r'gray': RubberColor.gray,
  r'caramel': RubberColor.caramel,
};
const _PositionDBstandProfileEnumValueMap = {
  r'none': r'none',
  r'regular': r'regular',
  r'warm': r'warm',
};
const _PositionDBstandProfileValueEnumMap = {
  r'none': StandProfile.none,
  r'regular': StandProfile.regular,
  r'warm': StandProfile.warm,
};
const _PositionDBwindowsillConnectorEnumValueMap = {
  r'none': r'none',
  r'd45': r'd45',
  r'd90': r'd90',
};
const _PositionDBwindowsillConnectorValueEnumMap = {
  r'none': WindowsillConnector.none,
  r'd45': WindowsillConnector.d45,
  r'd90': WindowsillConnector.d90,
};
const _PositionDBwindowsillDepthEnumValueMap = {
  r'none': r'none',
  r'd100': r'd100',
  r'd150': r'd150',
  r'd200': r'd200',
  r'd250': r'd250',
  r'd300': r'd300',
  r'd350': r'd350',
  r'd400': r'd400',
  r'd450': r'd450',
  r'd500': r'd500',
  r'd550': r'd550',
  r'd600': r'd600',
  r'd650': r'd650',
  r'd700': r'd700',
};
const _PositionDBwindowsillDepthValueEnumMap = {
  r'none': WindowsillDepth.none,
  r'd100': WindowsillDepth.d100,
  r'd150': WindowsillDepth.d150,
  r'd200': WindowsillDepth.d200,
  r'd250': WindowsillDepth.d250,
  r'd300': WindowsillDepth.d300,
  r'd350': WindowsillDepth.d350,
  r'd400': WindowsillDepth.d400,
  r'd450': WindowsillDepth.d450,
  r'd500': WindowsillDepth.d500,
  r'd550': WindowsillDepth.d550,
  r'd600': WindowsillDepth.d600,
  r'd650': WindowsillDepth.d650,
  r'd700': WindowsillDepth.d700,
};
const _PositionDBwindowsillTypeEnumValueMap = {
  r'none': r'none',
  r'pvc': r'pvc',
  r'wooden': r'wooden',
  r'stone': r'stone',
};
const _PositionDBwindowsillTypeValueEnumMap = {
  r'none': WindowsillType.none,
  r'pvc': WindowsillType.pvc,
  r'wooden': WindowsillType.wooden,
  r'stone': WindowsillType.stone,
};

extension PositionDBQueryFilter
    on QueryBuilder<PositionDB, PositionDB, QFilterCondition> {
  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      canopyColorEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'canopyColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      canopyColorGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'canopyColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      canopyColorLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'canopyColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      canopyColorBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'canopyColor',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      canopyColorStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'canopyColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      canopyColorEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'canopyColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      canopyColorContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'canopyColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      canopyColorMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'canopyColor',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      canopyColorIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'canopyColor',
        value: '',
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      canopyColorIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'canopyColor',
        value: '',
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition> canopySizeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'canopySize',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      canopySizeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'canopySize',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      canopySizeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'canopySize',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition> canopySizeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'canopySize',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      canopySizeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'canopySize',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      canopySizeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'canopySize',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      canopySizeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'canopySize',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition> canopySizeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'canopySize',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      canopySizeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'canopySize',
        value: '',
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      canopySizeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'canopySize',
        value: '',
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition> canopyTypeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'canopyType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      canopyTypeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'canopyType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      canopyTypeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'canopyType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition> canopyTypeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'canopyType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      canopyTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'canopyType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      canopyTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'canopyType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      canopyTypeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'canopyType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition> canopyTypeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'canopyType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      canopyTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'canopyType',
        value: '',
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      canopyTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'canopyType',
        value: '',
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      doorOpeningTypeEqualTo(
    DoorOpeningType value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'doorOpeningType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      doorOpeningTypeGreaterThan(
    DoorOpeningType value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'doorOpeningType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      doorOpeningTypeLessThan(
    DoorOpeningType value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'doorOpeningType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      doorOpeningTypeBetween(
    DoorOpeningType lower,
    DoorOpeningType upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'doorOpeningType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      doorOpeningTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'doorOpeningType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      doorOpeningTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'doorOpeningType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      doorOpeningTypeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'doorOpeningType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      doorOpeningTypeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'doorOpeningType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      doorOpeningTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'doorOpeningType',
        value: '',
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      doorOpeningTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'doorOpeningType',
        value: '',
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition> doorstepEqualTo(
    DoorstepOption value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'doorstep',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      doorstepGreaterThan(
    DoorstepOption value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'doorstep',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition> doorstepLessThan(
    DoorstepOption value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'doorstep',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition> doorstepBetween(
    DoorstepOption lower,
    DoorstepOption upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'doorstep',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      doorstepStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'doorstep',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition> doorstepEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'doorstep',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition> doorstepContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'doorstep',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition> doorstepMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'doorstep',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      doorstepIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'doorstep',
        value: '',
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      doorstepIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'doorstep',
        value: '',
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      doorstepTypeEqualTo(
    DoorstepType value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'doorstepType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      doorstepTypeGreaterThan(
    DoorstepType value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'doorstepType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      doorstepTypeLessThan(
    DoorstepType value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'doorstepType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      doorstepTypeBetween(
    DoorstepType lower,
    DoorstepType upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'doorstepType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      doorstepTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'doorstepType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      doorstepTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'doorstepType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      doorstepTypeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'doorstepType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      doorstepTypeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'doorstepType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      doorstepTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'doorstepType',
        value: '',
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      doorstepTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'doorstepType',
        value: '',
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      drainageColorEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'drainageColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      drainageColorGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'drainageColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      drainageColorLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'drainageColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      drainageColorBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'drainageColor',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      drainageColorStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'drainageColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      drainageColorEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'drainageColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      drainageColorContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'drainageColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      drainageColorMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'drainageColor',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      drainageColorIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'drainageColor',
        value: '',
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      drainageColorIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'drainageColor',
        value: '',
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      drainageDepthEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'drainageDepth',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      drainageDepthGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'drainageDepth',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      drainageDepthLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'drainageDepth',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      drainageDepthBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'drainageDepth',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      drainageDepthStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'drainageDepth',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      drainageDepthEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'drainageDepth',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      drainageDepthContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'drainageDepth',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      drainageDepthMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'drainageDepth',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      drainageDepthIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'drainageDepth',
        value: '',
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      drainageDepthIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'drainageDepth',
        value: '',
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      drainageEndCapEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'drainageEndCap',
        value: value,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      drainageWidthEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'drainageWidth',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      drainageWidthGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'drainageWidth',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      drainageWidthLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'drainageWidth',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      drainageWidthBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'drainageWidth',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      drainageWidthStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'drainageWidth',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      drainageWidthEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'drainageWidth',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      drainageWidthContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'drainageWidth',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      drainageWidthMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'drainageWidth',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      drainageWidthIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'drainageWidth',
        value: '',
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      drainageWidthIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'drainageWidth',
        value: '',
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      flexiblesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'flexibles',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      flexiblesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'flexibles',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      flexiblesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'flexibles',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      flexiblesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'flexibles',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      flexiblesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'flexibles',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      flexiblesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'flexibles',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition> furnitureEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'furniture',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      furnitureGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'furniture',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition> furnitureLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'furniture',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition> furnitureBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'furniture',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      furnitureStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'furniture',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition> furnitureEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'furniture',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition> furnitureContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'furniture',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition> furnitureMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'furniture',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      furnitureIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'furniture',
        value: '',
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      furnitureIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'furniture',
        value: '',
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition> glassUnitEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'glassUnit',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      glassUnitGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'glassUnit',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition> glassUnitLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'glassUnit',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition> glassUnitBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'glassUnit',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      glassUnitStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'glassUnit',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition> glassUnitEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'glassUnit',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition> glassUnitContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'glassUnit',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition> glassUnitMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'glassUnit',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      glassUnitIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'glassUnit',
        value: '',
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      glassUnitIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'glassUnit',
        value: '',
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition> idEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition> idGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition> idLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition> idBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition> idStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition> idEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition> idContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition> idMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'id',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition> idIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition> idIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      laminationExternalEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'laminationExternal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      laminationExternalGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'laminationExternal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      laminationExternalLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'laminationExternal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      laminationExternalBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'laminationExternal',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      laminationExternalStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'laminationExternal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      laminationExternalEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'laminationExternal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      laminationExternalContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'laminationExternal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      laminationExternalMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'laminationExternal',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      laminationExternalIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'laminationExternal',
        value: '',
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      laminationExternalIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'laminationExternal',
        value: '',
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      laminationInternalEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'laminationInternal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      laminationInternalGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'laminationInternal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      laminationInternalLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'laminationInternal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      laminationInternalBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'laminationInternal',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      laminationInternalStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'laminationInternal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      laminationInternalEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'laminationInternal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      laminationInternalContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'laminationInternal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      laminationInternalMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'laminationInternal',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      laminationInternalIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'laminationInternal',
        value: '',
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      laminationInternalIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'laminationInternal',
        value: '',
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      panelThicknessEqualTo(
    PanelThickness value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'panelThickness',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      panelThicknessGreaterThan(
    PanelThickness value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'panelThickness',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      panelThicknessLessThan(
    PanelThickness value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'panelThickness',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      panelThicknessBetween(
    PanelThickness lower,
    PanelThickness upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'panelThickness',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      panelThicknessStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'panelThickness',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      panelThicknessEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'panelThickness',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      panelThicknessContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'panelThickness',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      panelThicknessMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'panelThickness',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      panelThicknessIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'panelThickness',
        value: '',
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      panelThicknessIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'panelThickness',
        value: '',
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition> panelTypeEqualTo(
    PanelType value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'panelType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      panelTypeGreaterThan(
    PanelType value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'panelType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition> panelTypeLessThan(
    PanelType value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'panelType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition> panelTypeBetween(
    PanelType lower,
    PanelType upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'panelType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      panelTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'panelType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition> panelTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'panelType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition> panelTypeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'panelType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition> panelTypeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'panelType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      panelTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'panelType',
        value: '',
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      panelTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'panelType',
        value: '',
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      photoPathIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'photoPath',
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      photoPathIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'photoPath',
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition> photoPathEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'photoPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      photoPathGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'photoPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition> photoPathLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'photoPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition> photoPathBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'photoPath',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      photoPathStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'photoPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition> photoPathEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'photoPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition> photoPathContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'photoPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition> photoPathMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'photoPath',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      photoPathIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'photoPath',
        value: '',
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      photoPathIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'photoPath',
        value: '',
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      positionCommentEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'positionComment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      positionCommentGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'positionComment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      positionCommentLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'positionComment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      positionCommentBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'positionComment',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      positionCommentStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'positionComment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      positionCommentEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'positionComment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      positionCommentContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'positionComment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      positionCommentMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'positionComment',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      positionCommentIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'positionComment',
        value: '',
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      positionCommentIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'positionComment',
        value: '',
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      profileSystemEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'profileSystem',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      profileSystemGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'profileSystem',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      profileSystemLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'profileSystem',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      profileSystemBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'profileSystem',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      profileSystemStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'profileSystem',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      profileSystemEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'profileSystem',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      profileSystemContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'profileSystem',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      profileSystemMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'profileSystem',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      profileSystemIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'profileSystem',
        value: '',
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      profileSystemIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'profileSystem',
        value: '',
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      quarterPositionEqualTo(
    QuarterPosition value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'quarterPosition',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      quarterPositionGreaterThan(
    QuarterPosition value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'quarterPosition',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      quarterPositionLessThan(
    QuarterPosition value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'quarterPosition',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      quarterPositionBetween(
    QuarterPosition lower,
    QuarterPosition upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'quarterPosition',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      quarterPositionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'quarterPosition',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      quarterPositionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'quarterPosition',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      quarterPositionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'quarterPosition',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      quarterPositionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'quarterPosition',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      quarterPositionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'quarterPosition',
        value: '',
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      quarterPositionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'quarterPosition',
        value: '',
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      quarterSizeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'quarterSize',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      quarterSizeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'quarterSize',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      quarterSizeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'quarterSize',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      quarterSizeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'quarterSize',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      quarterSizeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'quarterSize',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      quarterSizeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'quarterSize',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      quarterSizeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'quarterSize',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      quarterSizeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'quarterSize',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      quarterSizeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'quarterSize',
        value: '',
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      quarterSizeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'quarterSize',
        value: '',
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      rubberColorEqualTo(
    RubberColor value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rubberColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      rubberColorGreaterThan(
    RubberColor value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'rubberColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      rubberColorLessThan(
    RubberColor value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'rubberColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      rubberColorBetween(
    RubberColor lower,
    RubberColor upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'rubberColor',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      rubberColorStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'rubberColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      rubberColorEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'rubberColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      rubberColorContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'rubberColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      rubberColorMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'rubberColor',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      rubberColorIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rubberColor',
        value: '',
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      rubberColorIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'rubberColor',
        value: '',
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition> schemeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'scheme',
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      schemeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'scheme',
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      schemeCommentEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'schemeComment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      schemeCommentGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'schemeComment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      schemeCommentLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'schemeComment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      schemeCommentBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'schemeComment',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      schemeCommentStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'schemeComment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      schemeCommentEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'schemeComment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      schemeCommentContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'schemeComment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      schemeCommentMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'schemeComment',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      schemeCommentIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'schemeComment',
        value: '',
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      schemeCommentIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'schemeComment',
        value: '',
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition> slopeDepthEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'slopeDepth',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      slopeDepthGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'slopeDepth',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      slopeDepthLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'slopeDepth',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition> slopeDepthBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'slopeDepth',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      slopeDepthStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'slopeDepth',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      slopeDepthEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'slopeDepth',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      slopeDepthContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'slopeDepth',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition> slopeDepthMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'slopeDepth',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      slopeDepthIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'slopeDepth',
        value: '',
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      slopeDepthIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'slopeDepth',
        value: '',
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      slopeLengthEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'slopeLength',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      slopeLengthGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'slopeLength',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      slopeLengthLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'slopeLength',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      slopeLengthBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'slopeLength',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      slopeLengthStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'slopeLength',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      slopeLengthEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'slopeLength',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      slopeLengthContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'slopeLength',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      slopeLengthMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'slopeLength',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      slopeLengthIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'slopeLength',
        value: '',
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      slopeLengthIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'slopeLength',
        value: '',
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      slopeQuantityEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'slopeQuantity',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      slopeQuantityGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'slopeQuantity',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      slopeQuantityLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'slopeQuantity',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      slopeQuantityBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'slopeQuantity',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      slopeQuantityStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'slopeQuantity',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      slopeQuantityEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'slopeQuantity',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      slopeQuantityContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'slopeQuantity',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      slopeQuantityMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'slopeQuantity',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      slopeQuantityIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'slopeQuantity',
        value: '',
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      slopeQuantityIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'slopeQuantity',
        value: '',
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      standProfileEqualTo(
    StandProfile value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'standProfile',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      standProfileGreaterThan(
    StandProfile value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'standProfile',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      standProfileLessThan(
    StandProfile value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'standProfile',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      standProfileBetween(
    StandProfile lower,
    StandProfile upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'standProfile',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      standProfileStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'standProfile',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      standProfileEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'standProfile',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      standProfileContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'standProfile',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      standProfileMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'standProfile',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      standProfileIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'standProfile',
        value: '',
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      standProfileIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'standProfile',
        value: '',
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      staticCalculationEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'staticCalculation',
        value: value,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      windowsillAssemblyEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'windowsillAssembly',
        value: value,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      windowsillColorEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'windowsillColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      windowsillColorGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'windowsillColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      windowsillColorLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'windowsillColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      windowsillColorBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'windowsillColor',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      windowsillColorStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'windowsillColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      windowsillColorEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'windowsillColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      windowsillColorContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'windowsillColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      windowsillColorMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'windowsillColor',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      windowsillColorIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'windowsillColor',
        value: '',
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      windowsillColorIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'windowsillColor',
        value: '',
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      windowsillConnectorEqualTo(
    WindowsillConnector value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'windowsillConnector',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      windowsillConnectorGreaterThan(
    WindowsillConnector value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'windowsillConnector',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      windowsillConnectorLessThan(
    WindowsillConnector value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'windowsillConnector',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      windowsillConnectorBetween(
    WindowsillConnector lower,
    WindowsillConnector upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'windowsillConnector',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      windowsillConnectorStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'windowsillConnector',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      windowsillConnectorEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'windowsillConnector',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      windowsillConnectorContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'windowsillConnector',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      windowsillConnectorMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'windowsillConnector',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      windowsillConnectorIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'windowsillConnector',
        value: '',
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      windowsillConnectorIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'windowsillConnector',
        value: '',
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      windowsillDepthEqualTo(
    WindowsillDepth value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'windowsillDepth',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      windowsillDepthGreaterThan(
    WindowsillDepth value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'windowsillDepth',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      windowsillDepthLessThan(
    WindowsillDepth value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'windowsillDepth',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      windowsillDepthBetween(
    WindowsillDepth lower,
    WindowsillDepth upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'windowsillDepth',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      windowsillDepthStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'windowsillDepth',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      windowsillDepthEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'windowsillDepth',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      windowsillDepthContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'windowsillDepth',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      windowsillDepthMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'windowsillDepth',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      windowsillDepthIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'windowsillDepth',
        value: '',
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      windowsillDepthIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'windowsillDepth',
        value: '',
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      windowsillSizeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'windowsillSize',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      windowsillSizeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'windowsillSize',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      windowsillSizeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'windowsillSize',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      windowsillSizeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'windowsillSize',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      windowsillSizeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'windowsillSize',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      windowsillSizeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'windowsillSize',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      windowsillSizeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'windowsillSize',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      windowsillSizeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'windowsillSize',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      windowsillSizeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'windowsillSize',
        value: '',
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      windowsillSizeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'windowsillSize',
        value: '',
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      windowsillTypeEqualTo(
    WindowsillType value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'windowsillType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      windowsillTypeGreaterThan(
    WindowsillType value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'windowsillType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      windowsillTypeLessThan(
    WindowsillType value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'windowsillType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      windowsillTypeBetween(
    WindowsillType lower,
    WindowsillType upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'windowsillType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      windowsillTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'windowsillType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      windowsillTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'windowsillType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      windowsillTypeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'windowsillType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      windowsillTypeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'windowsillType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      windowsillTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'windowsillType',
        value: '',
      ));
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition>
      windowsillTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'windowsillType',
        value: '',
      ));
    });
  }
}

extension PositionDBQueryObject
    on QueryBuilder<PositionDB, PositionDB, QFilterCondition> {
  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition> expanderOption(
      FilterQuery<ExpanderOptionDB> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'expanderOption');
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition> flexiblesElement(
      FilterQuery<SchemeDB> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'flexibles');
    });
  }

  QueryBuilder<PositionDB, PositionDB, QAfterFilterCondition> scheme(
      FilterQuery<SchemeDB> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'scheme');
    });
  }
}
