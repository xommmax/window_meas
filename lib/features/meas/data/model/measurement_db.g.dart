// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'measurement_db.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetMeasurementDBCollection on Isar {
  IsarCollection<MeasurementDB> get measurementDBs => this.collection();
}

const MeasurementDBSchema = CollectionSchema(
  name: r'MeasurementDB',
  id: -8314986101881922335,
  properties: {
    r'apartment': PropertySchema(
      id: 0,
      name: r'apartment',
      type: IsarType.string,
    ),
    r'assembly': PropertySchema(
      id: 1,
      name: r'assembly',
      type: IsarType.string,
      enumMap: _MeasurementDBassemblyEnumValueMap,
    ),
    r'block': PropertySchema(
      id: 2,
      name: r'block',
      type: IsarType.string,
    ),
    r'building': PropertySchema(
      id: 3,
      name: r'building',
      type: IsarType.string,
    ),
    r'buildingType': PropertySchema(
      id: 4,
      name: r'buildingType',
      type: IsarType.string,
      enumMap: _MeasurementDBbuildingTypeEnumValueMap,
    ),
    r'canopyColor': PropertySchema(
      id: 5,
      name: r'canopyColor',
      type: IsarType.string,
    ),
    r'canopySize': PropertySchema(
      id: 6,
      name: r'canopySize',
      type: IsarType.string,
    ),
    r'canopyType': PropertySchema(
      id: 7,
      name: r'canopyType',
      type: IsarType.string,
    ),
    r'city': PropertySchema(
      id: 8,
      name: r'city',
      type: IsarType.string,
    ),
    r'clientName': PropertySchema(
      id: 9,
      name: r'clientName',
      type: IsarType.string,
    ),
    r'comment': PropertySchema(
      id: 10,
      name: r'comment',
      type: IsarType.string,
    ),
    r'cost': PropertySchema(
      id: 11,
      name: r'cost',
      type: IsarType.string,
    ),
    r'date': PropertySchema(
      id: 12,
      name: r'date',
      type: IsarType.dateTime,
    ),
    r'delivery': PropertySchema(
      id: 13,
      name: r'delivery',
      type: IsarType.bool,
    ),
    r'disassembly': PropertySchema(
      id: 14,
      name: r'disassembly',
      type: IsarType.bool,
    ),
    r'district': PropertySchema(
      id: 15,
      name: r'district',
      type: IsarType.string,
    ),
    r'doorOpeningType': PropertySchema(
      id: 16,
      name: r'doorOpeningType',
      type: IsarType.string,
      enumMap: _MeasurementDBdoorOpeningTypeEnumValueMap,
    ),
    r'doorphone': PropertySchema(
      id: 17,
      name: r'doorphone',
      type: IsarType.string,
    ),
    r'doorstep': PropertySchema(
      id: 18,
      name: r'doorstep',
      type: IsarType.string,
      enumMap: _MeasurementDBdoorstepEnumValueMap,
    ),
    r'doorstepType': PropertySchema(
      id: 19,
      name: r'doorstepType',
      type: IsarType.string,
      enumMap: _MeasurementDBdoorstepTypeEnumValueMap,
    ),
    r'drainageColor': PropertySchema(
      id: 20,
      name: r'drainageColor',
      type: IsarType.string,
    ),
    r'drainageDepth': PropertySchema(
      id: 21,
      name: r'drainageDepth',
      type: IsarType.string,
    ),
    r'drainageEndCap': PropertySchema(
      id: 22,
      name: r'drainageEndCap',
      type: IsarType.bool,
    ),
    r'drainageWidth': PropertySchema(
      id: 23,
      name: r'drainageWidth',
      type: IsarType.string,
    ),
    r'elevator': PropertySchema(
      id: 24,
      name: r'elevator',
      type: IsarType.string,
      enumMap: _MeasurementDBelevatorEnumValueMap,
    ),
    r'entrance': PropertySchema(
      id: 25,
      name: r'entrance',
      type: IsarType.string,
    ),
    r'estimatedAssemblyTime': PropertySchema(
      id: 26,
      name: r'estimatedAssemblyTime',
      type: IsarType.string,
    ),
    r'expanderOption': PropertySchema(
      id: 27,
      name: r'expanderOption',
      type: IsarType.object,
      target: r'ExpanderOptionDB',
    ),
    r'extensionSheathing': PropertySchema(
      id: 28,
      name: r'extensionSheathing',
      type: IsarType.bool,
    ),
    r'flatStatus': PropertySchema(
      id: 29,
      name: r'flatStatus',
      type: IsarType.string,
      enumMap: _MeasurementDBflatStatusEnumValueMap,
    ),
    r'floor': PropertySchema(
      id: 30,
      name: r'floor',
      type: IsarType.string,
    ),
    r'furniture': PropertySchema(
      id: 31,
      name: r'furniture',
      type: IsarType.string,
    ),
    r'garbageRemoval': PropertySchema(
      id: 32,
      name: r'garbageRemoval',
      type: IsarType.bool,
    ),
    r'glassUnit': PropertySchema(
      id: 33,
      name: r'glassUnit',
      type: IsarType.string,
    ),
    r'gridDisassembly': PropertySchema(
      id: 34,
      name: r'gridDisassembly',
      type: IsarType.bool,
    ),
    r'housingCoopNumber': PropertySchema(
      id: 35,
      name: r'housingCoopNumber',
      type: IsarType.string,
    ),
    r'howDiscovered': PropertySchema(
      id: 36,
      name: r'howDiscovered',
      type: IsarType.string,
    ),
    r'id': PropertySchema(
      id: 37,
      name: r'id',
      type: IsarType.string,
    ),
    r'insulation': PropertySchema(
      id: 38,
      name: r'insulation',
      type: IsarType.bool,
    ),
    r'laminationExternal': PropertySchema(
      id: 39,
      name: r'laminationExternal',
      type: IsarType.string,
    ),
    r'laminationInternal': PropertySchema(
      id: 40,
      name: r'laminationInternal',
      type: IsarType.string,
    ),
    r'measurer': PropertySchema(
      id: 41,
      name: r'measurer',
      type: IsarType.string,
    ),
    r'panelThickness': PropertySchema(
      id: 42,
      name: r'panelThickness',
      type: IsarType.string,
      enumMap: _MeasurementDBpanelThicknessEnumValueMap,
    ),
    r'panelType': PropertySchema(
      id: 43,
      name: r'panelType',
      type: IsarType.string,
      enumMap: _MeasurementDBpanelTypeEnumValueMap,
    ),
    r'parapetReinforcement': PropertySchema(
      id: 44,
      name: r'parapetReinforcement',
      type: IsarType.bool,
    ),
    r'phoneNumberAdditional': PropertySchema(
      id: 45,
      name: r'phoneNumberAdditional',
      type: IsarType.string,
    ),
    r'phoneNumberMain': PropertySchema(
      id: 46,
      name: r'phoneNumberMain',
      type: IsarType.string,
    ),
    r'prepayment': PropertySchema(
      id: 47,
      name: r'prepayment',
      type: IsarType.string,
    ),
    r'profileSystem': PropertySchema(
      id: 48,
      name: r'profileSystem',
      type: IsarType.string,
      enumMap: _MeasurementDBprofileSystemEnumValueMap,
    ),
    r'quarterPosition': PropertySchema(
      id: 49,
      name: r'quarterPosition',
      type: IsarType.string,
      enumMap: _MeasurementDBquarterPositionEnumValueMap,
    ),
    r'quarterSize': PropertySchema(
      id: 50,
      name: r'quarterSize',
      type: IsarType.string,
    ),
    r'residentialComplex': PropertySchema(
      id: 51,
      name: r'residentialComplex',
      type: IsarType.string,
    ),
    r'roofDisassembly': PropertySchema(
      id: 52,
      name: r'roofDisassembly',
      type: IsarType.bool,
    ),
    r'rubberColor': PropertySchema(
      id: 53,
      name: r'rubberColor',
      type: IsarType.string,
      enumMap: _MeasurementDBrubberColorEnumValueMap,
    ),
    r'scheme': PropertySchema(
      id: 54,
      name: r'scheme',
      type: IsarType.object,
      target: r'SchemeDB',
    ),
    r'screedDisassembly': PropertySchema(
      id: 55,
      name: r'screedDisassembly',
      type: IsarType.bool,
    ),
    r'sealing': PropertySchema(
      id: 56,
      name: r'sealing',
      type: IsarType.bool,
    ),
    r'slabExtension': PropertySchema(
      id: 57,
      name: r'slabExtension',
      type: IsarType.bool,
    ),
    r'slopeDepth': PropertySchema(
      id: 58,
      name: r'slopeDepth',
      type: IsarType.string,
    ),
    r'slopeLength': PropertySchema(
      id: 59,
      name: r'slopeLength',
      type: IsarType.string,
    ),
    r'slopeQuantity': PropertySchema(
      id: 60,
      name: r'slopeQuantity',
      type: IsarType.string,
    ),
    r'standProfile': PropertySchema(
      id: 61,
      name: r'standProfile',
      type: IsarType.string,
      enumMap: _MeasurementDBstandProfileEnumValueMap,
    ),
    r'staticCalculation': PropertySchema(
      id: 62,
      name: r'staticCalculation',
      type: IsarType.bool,
    ),
    r'street': PropertySchema(
      id: 63,
      name: r'street',
      type: IsarType.string,
    ),
    r'unloading': PropertySchema(
      id: 64,
      name: r'unloading',
      type: IsarType.bool,
    ),
    r'vacuumCleaner': PropertySchema(
      id: 65,
      name: r'vacuumCleaner',
      type: IsarType.bool,
    ),
    r'windowsillAssembly': PropertySchema(
      id: 66,
      name: r'windowsillAssembly',
      type: IsarType.bool,
    ),
    r'windowsillColor': PropertySchema(
      id: 67,
      name: r'windowsillColor',
      type: IsarType.string,
    ),
    r'windowsillConnector': PropertySchema(
      id: 68,
      name: r'windowsillConnector',
      type: IsarType.string,
      enumMap: _MeasurementDBwindowsillConnectorEnumValueMap,
    ),
    r'windowsillDepth': PropertySchema(
      id: 69,
      name: r'windowsillDepth',
      type: IsarType.string,
      enumMap: _MeasurementDBwindowsillDepthEnumValueMap,
    ),
    r'windowsillExtension': PropertySchema(
      id: 70,
      name: r'windowsillExtension',
      type: IsarType.string,
      enumMap: _MeasurementDBwindowsillExtensionEnumValueMap,
    ),
    r'windowsillSize': PropertySchema(
      id: 71,
      name: r'windowsillSize',
      type: IsarType.string,
    ),
    r'windowsillType': PropertySchema(
      id: 72,
      name: r'windowsillType',
      type: IsarType.string,
      enumMap: _MeasurementDBwindowsillTypeEnumValueMap,
    )
  },
  estimateSize: _measurementDBEstimateSize,
  serialize: _measurementDBSerialize,
  deserialize: _measurementDBDeserialize,
  deserializeProp: _measurementDBDeserializeProp,
  idName: r'innerId',
  indexes: {
    r'id': IndexSchema(
      id: -3268401673993471357,
      name: r'id',
      unique: true,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'id',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {
    r'ExpanderOptionDB': ExpanderOptionDBSchema,
    r'SchemeDB': SchemeDBSchema,
    r'LineDB': LineDBSchema,
    r'SizeSegmentDB': SizeSegmentDBSchema,
    r'PolygonDB': PolygonDBSchema
  },
  getId: _measurementDBGetId,
  getLinks: _measurementDBGetLinks,
  attach: _measurementDBAttach,
  version: '3.1.0+1',
);

int _measurementDBEstimateSize(
  MeasurementDB object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.apartment.length * 3;
  bytesCount += 3 + object.assembly.name.length * 3;
  bytesCount += 3 + object.block.length * 3;
  bytesCount += 3 + object.building.length * 3;
  bytesCount += 3 + object.buildingType.name.length * 3;
  bytesCount += 3 + object.canopyColor.length * 3;
  bytesCount += 3 + object.canopySize.length * 3;
  bytesCount += 3 + object.canopyType.length * 3;
  bytesCount += 3 + object.city.length * 3;
  bytesCount += 3 + object.clientName.length * 3;
  bytesCount += 3 + object.comment.length * 3;
  bytesCount += 3 + object.cost.length * 3;
  bytesCount += 3 + object.district.length * 3;
  bytesCount += 3 + object.doorOpeningType.name.length * 3;
  bytesCount += 3 + object.doorphone.length * 3;
  bytesCount += 3 + object.doorstep.name.length * 3;
  bytesCount += 3 + object.doorstepType.name.length * 3;
  bytesCount += 3 + object.drainageColor.length * 3;
  bytesCount += 3 + object.drainageDepth.length * 3;
  bytesCount += 3 + object.drainageWidth.length * 3;
  bytesCount += 3 + object.elevator.name.length * 3;
  bytesCount += 3 + object.entrance.length * 3;
  bytesCount += 3 + object.estimatedAssemblyTime.length * 3;
  bytesCount += 3 +
      ExpanderOptionDBSchema.estimateSize(
          object.expanderOption, allOffsets[ExpanderOptionDB]!, allOffsets);
  bytesCount += 3 + object.flatStatus.name.length * 3;
  bytesCount += 3 + object.floor.length * 3;
  bytesCount += 3 + object.furniture.length * 3;
  bytesCount += 3 + object.glassUnit.length * 3;
  bytesCount += 3 + object.housingCoopNumber.length * 3;
  bytesCount += 3 + object.howDiscovered.length * 3;
  bytesCount += 3 + object.id.length * 3;
  bytesCount += 3 + object.laminationExternal.length * 3;
  bytesCount += 3 + object.laminationInternal.length * 3;
  bytesCount += 3 + object.measurer.length * 3;
  bytesCount += 3 + object.panelThickness.name.length * 3;
  bytesCount += 3 + object.panelType.name.length * 3;
  bytesCount += 3 + object.phoneNumberAdditional.length * 3;
  bytesCount += 3 + object.phoneNumberMain.length * 3;
  bytesCount += 3 + object.prepayment.length * 3;
  bytesCount += 3 + object.profileSystem.name.length * 3;
  bytesCount += 3 + object.quarterPosition.name.length * 3;
  bytesCount += 3 + object.quarterSize.length * 3;
  bytesCount += 3 + object.residentialComplex.length * 3;
  bytesCount += 3 + object.rubberColor.name.length * 3;
  {
    final value = object.scheme;
    if (value != null) {
      bytesCount += 3 +
          SchemeDBSchema.estimateSize(value, allOffsets[SchemeDB]!, allOffsets);
    }
  }
  bytesCount += 3 + object.slopeDepth.length * 3;
  bytesCount += 3 + object.slopeLength.length * 3;
  bytesCount += 3 + object.slopeQuantity.length * 3;
  bytesCount += 3 + object.standProfile.name.length * 3;
  bytesCount += 3 + object.street.length * 3;
  bytesCount += 3 + object.windowsillColor.length * 3;
  bytesCount += 3 + object.windowsillConnector.name.length * 3;
  bytesCount += 3 + object.windowsillDepth.name.length * 3;
  bytesCount += 3 + object.windowsillExtension.name.length * 3;
  bytesCount += 3 + object.windowsillSize.length * 3;
  bytesCount += 3 + object.windowsillType.name.length * 3;
  return bytesCount;
}

void _measurementDBSerialize(
  MeasurementDB object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.apartment);
  writer.writeString(offsets[1], object.assembly.name);
  writer.writeString(offsets[2], object.block);
  writer.writeString(offsets[3], object.building);
  writer.writeString(offsets[4], object.buildingType.name);
  writer.writeString(offsets[5], object.canopyColor);
  writer.writeString(offsets[6], object.canopySize);
  writer.writeString(offsets[7], object.canopyType);
  writer.writeString(offsets[8], object.city);
  writer.writeString(offsets[9], object.clientName);
  writer.writeString(offsets[10], object.comment);
  writer.writeString(offsets[11], object.cost);
  writer.writeDateTime(offsets[12], object.date);
  writer.writeBool(offsets[13], object.delivery);
  writer.writeBool(offsets[14], object.disassembly);
  writer.writeString(offsets[15], object.district);
  writer.writeString(offsets[16], object.doorOpeningType.name);
  writer.writeString(offsets[17], object.doorphone);
  writer.writeString(offsets[18], object.doorstep.name);
  writer.writeString(offsets[19], object.doorstepType.name);
  writer.writeString(offsets[20], object.drainageColor);
  writer.writeString(offsets[21], object.drainageDepth);
  writer.writeBool(offsets[22], object.drainageEndCap);
  writer.writeString(offsets[23], object.drainageWidth);
  writer.writeString(offsets[24], object.elevator.name);
  writer.writeString(offsets[25], object.entrance);
  writer.writeString(offsets[26], object.estimatedAssemblyTime);
  writer.writeObject<ExpanderOptionDB>(
    offsets[27],
    allOffsets,
    ExpanderOptionDBSchema.serialize,
    object.expanderOption,
  );
  writer.writeBool(offsets[28], object.extensionSheathing);
  writer.writeString(offsets[29], object.flatStatus.name);
  writer.writeString(offsets[30], object.floor);
  writer.writeString(offsets[31], object.furniture);
  writer.writeBool(offsets[32], object.garbageRemoval);
  writer.writeString(offsets[33], object.glassUnit);
  writer.writeBool(offsets[34], object.gridDisassembly);
  writer.writeString(offsets[35], object.housingCoopNumber);
  writer.writeString(offsets[36], object.howDiscovered);
  writer.writeString(offsets[37], object.id);
  writer.writeBool(offsets[38], object.insulation);
  writer.writeString(offsets[39], object.laminationExternal);
  writer.writeString(offsets[40], object.laminationInternal);
  writer.writeString(offsets[41], object.measurer);
  writer.writeString(offsets[42], object.panelThickness.name);
  writer.writeString(offsets[43], object.panelType.name);
  writer.writeBool(offsets[44], object.parapetReinforcement);
  writer.writeString(offsets[45], object.phoneNumberAdditional);
  writer.writeString(offsets[46], object.phoneNumberMain);
  writer.writeString(offsets[47], object.prepayment);
  writer.writeString(offsets[48], object.profileSystem.name);
  writer.writeString(offsets[49], object.quarterPosition.name);
  writer.writeString(offsets[50], object.quarterSize);
  writer.writeString(offsets[51], object.residentialComplex);
  writer.writeBool(offsets[52], object.roofDisassembly);
  writer.writeString(offsets[53], object.rubberColor.name);
  writer.writeObject<SchemeDB>(
    offsets[54],
    allOffsets,
    SchemeDBSchema.serialize,
    object.scheme,
  );
  writer.writeBool(offsets[55], object.screedDisassembly);
  writer.writeBool(offsets[56], object.sealing);
  writer.writeBool(offsets[57], object.slabExtension);
  writer.writeString(offsets[58], object.slopeDepth);
  writer.writeString(offsets[59], object.slopeLength);
  writer.writeString(offsets[60], object.slopeQuantity);
  writer.writeString(offsets[61], object.standProfile.name);
  writer.writeBool(offsets[62], object.staticCalculation);
  writer.writeString(offsets[63], object.street);
  writer.writeBool(offsets[64], object.unloading);
  writer.writeBool(offsets[65], object.vacuumCleaner);
  writer.writeBool(offsets[66], object.windowsillAssembly);
  writer.writeString(offsets[67], object.windowsillColor);
  writer.writeString(offsets[68], object.windowsillConnector.name);
  writer.writeString(offsets[69], object.windowsillDepth.name);
  writer.writeString(offsets[70], object.windowsillExtension.name);
  writer.writeString(offsets[71], object.windowsillSize);
  writer.writeString(offsets[72], object.windowsillType.name);
}

MeasurementDB _measurementDBDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = MeasurementDB();
  object.apartment = reader.readString(offsets[0]);
  object.assembly =
      _MeasurementDBassemblyValueEnumMap[reader.readStringOrNull(offsets[1])] ??
          AssemblyType.none;
  object.block = reader.readString(offsets[2]);
  object.building = reader.readString(offsets[3]);
  object.buildingType = _MeasurementDBbuildingTypeValueEnumMap[
          reader.readStringOrNull(offsets[4])] ??
      BuildingType.none;
  object.canopyColor = reader.readString(offsets[5]);
  object.canopySize = reader.readString(offsets[6]);
  object.canopyType = reader.readString(offsets[7]);
  object.city = reader.readString(offsets[8]);
  object.clientName = reader.readString(offsets[9]);
  object.comment = reader.readString(offsets[10]);
  object.cost = reader.readString(offsets[11]);
  object.date = reader.readDateTime(offsets[12]);
  object.delivery = reader.readBool(offsets[13]);
  object.disassembly = reader.readBool(offsets[14]);
  object.district = reader.readString(offsets[15]);
  object.doorOpeningType = _MeasurementDBdoorOpeningTypeValueEnumMap[
          reader.readStringOrNull(offsets[16])] ??
      DoorOpeningType.none;
  object.doorphone = reader.readString(offsets[17]);
  object.doorstep = _MeasurementDBdoorstepValueEnumMap[
          reader.readStringOrNull(offsets[18])] ??
      DoorstepOption.none;
  object.doorstepType = _MeasurementDBdoorstepTypeValueEnumMap[
          reader.readStringOrNull(offsets[19])] ??
      DoorstepType.none;
  object.drainageColor = reader.readString(offsets[20]);
  object.drainageDepth = reader.readString(offsets[21]);
  object.drainageEndCap = reader.readBool(offsets[22]);
  object.drainageWidth = reader.readString(offsets[23]);
  object.elevator = _MeasurementDBelevatorValueEnumMap[
          reader.readStringOrNull(offsets[24])] ??
      ElevatorOptions.none;
  object.entrance = reader.readString(offsets[25]);
  object.estimatedAssemblyTime = reader.readString(offsets[26]);
  object.expanderOption = reader.readObjectOrNull<ExpanderOptionDB>(
        offsets[27],
        ExpanderOptionDBSchema.deserialize,
        allOffsets,
      ) ??
      ExpanderOptionDB();
  object.extensionSheathing = reader.readBool(offsets[28]);
  object.flatStatus = _MeasurementDBflatStatusValueEnumMap[
          reader.readStringOrNull(offsets[29])] ??
      FlatStatus.none;
  object.floor = reader.readString(offsets[30]);
  object.furniture = reader.readString(offsets[31]);
  object.garbageRemoval = reader.readBool(offsets[32]);
  object.glassUnit = reader.readString(offsets[33]);
  object.gridDisassembly = reader.readBool(offsets[34]);
  object.housingCoopNumber = reader.readString(offsets[35]);
  object.howDiscovered = reader.readString(offsets[36]);
  object.id = reader.readString(offsets[37]);
  object.innerId = id;
  object.insulation = reader.readBool(offsets[38]);
  object.laminationExternal = reader.readString(offsets[39]);
  object.laminationInternal = reader.readString(offsets[40]);
  object.measurer = reader.readString(offsets[41]);
  object.panelThickness = _MeasurementDBpanelThicknessValueEnumMap[
          reader.readStringOrNull(offsets[42])] ??
      PanelThickness.none;
  object.panelType = _MeasurementDBpanelTypeValueEnumMap[
          reader.readStringOrNull(offsets[43])] ??
      PanelType.none;
  object.parapetReinforcement = reader.readBool(offsets[44]);
  object.phoneNumberAdditional = reader.readString(offsets[45]);
  object.phoneNumberMain = reader.readString(offsets[46]);
  object.prepayment = reader.readString(offsets[47]);
  object.profileSystem = _MeasurementDBprofileSystemValueEnumMap[
          reader.readStringOrNull(offsets[48])] ??
      ProfileSystem.none;
  object.quarterPosition = _MeasurementDBquarterPositionValueEnumMap[
          reader.readStringOrNull(offsets[49])] ??
      QuarterPosition.none;
  object.quarterSize = reader.readString(offsets[50]);
  object.residentialComplex = reader.readString(offsets[51]);
  object.roofDisassembly = reader.readBool(offsets[52]);
  object.rubberColor = _MeasurementDBrubberColorValueEnumMap[
          reader.readStringOrNull(offsets[53])] ??
      RubberColor.none;
  object.scheme = reader.readObjectOrNull<SchemeDB>(
    offsets[54],
    SchemeDBSchema.deserialize,
    allOffsets,
  );
  object.screedDisassembly = reader.readBool(offsets[55]);
  object.sealing = reader.readBool(offsets[56]);
  object.slabExtension = reader.readBool(offsets[57]);
  object.slopeDepth = reader.readString(offsets[58]);
  object.slopeLength = reader.readString(offsets[59]);
  object.slopeQuantity = reader.readString(offsets[60]);
  object.standProfile = _MeasurementDBstandProfileValueEnumMap[
          reader.readStringOrNull(offsets[61])] ??
      StandProfile.none;
  object.staticCalculation = reader.readBool(offsets[62]);
  object.street = reader.readString(offsets[63]);
  object.unloading = reader.readBool(offsets[64]);
  object.vacuumCleaner = reader.readBool(offsets[65]);
  object.windowsillAssembly = reader.readBool(offsets[66]);
  object.windowsillColor = reader.readString(offsets[67]);
  object.windowsillConnector = _MeasurementDBwindowsillConnectorValueEnumMap[
          reader.readStringOrNull(offsets[68])] ??
      WindowsillConnector.none;
  object.windowsillDepth = _MeasurementDBwindowsillDepthValueEnumMap[
          reader.readStringOrNull(offsets[69])] ??
      WindowsillDepth.none;
  object.windowsillExtension = _MeasurementDBwindowsillExtensionValueEnumMap[
          reader.readStringOrNull(offsets[70])] ??
      WindowsillExtension.none;
  object.windowsillSize = reader.readString(offsets[71]);
  object.windowsillType = _MeasurementDBwindowsillTypeValueEnumMap[
          reader.readStringOrNull(offsets[72])] ??
      WindowsillType.none;
  return object;
}

P _measurementDBDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (_MeasurementDBassemblyValueEnumMap[
              reader.readStringOrNull(offset)] ??
          AssemblyType.none) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (_MeasurementDBbuildingTypeValueEnumMap[
              reader.readStringOrNull(offset)] ??
          BuildingType.none) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readString(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    case 8:
      return (reader.readString(offset)) as P;
    case 9:
      return (reader.readString(offset)) as P;
    case 10:
      return (reader.readString(offset)) as P;
    case 11:
      return (reader.readString(offset)) as P;
    case 12:
      return (reader.readDateTime(offset)) as P;
    case 13:
      return (reader.readBool(offset)) as P;
    case 14:
      return (reader.readBool(offset)) as P;
    case 15:
      return (reader.readString(offset)) as P;
    case 16:
      return (_MeasurementDBdoorOpeningTypeValueEnumMap[
              reader.readStringOrNull(offset)] ??
          DoorOpeningType.none) as P;
    case 17:
      return (reader.readString(offset)) as P;
    case 18:
      return (_MeasurementDBdoorstepValueEnumMap[
              reader.readStringOrNull(offset)] ??
          DoorstepOption.none) as P;
    case 19:
      return (_MeasurementDBdoorstepTypeValueEnumMap[
              reader.readStringOrNull(offset)] ??
          DoorstepType.none) as P;
    case 20:
      return (reader.readString(offset)) as P;
    case 21:
      return (reader.readString(offset)) as P;
    case 22:
      return (reader.readBool(offset)) as P;
    case 23:
      return (reader.readString(offset)) as P;
    case 24:
      return (_MeasurementDBelevatorValueEnumMap[
              reader.readStringOrNull(offset)] ??
          ElevatorOptions.none) as P;
    case 25:
      return (reader.readString(offset)) as P;
    case 26:
      return (reader.readString(offset)) as P;
    case 27:
      return (reader.readObjectOrNull<ExpanderOptionDB>(
            offset,
            ExpanderOptionDBSchema.deserialize,
            allOffsets,
          ) ??
          ExpanderOptionDB()) as P;
    case 28:
      return (reader.readBool(offset)) as P;
    case 29:
      return (_MeasurementDBflatStatusValueEnumMap[
              reader.readStringOrNull(offset)] ??
          FlatStatus.none) as P;
    case 30:
      return (reader.readString(offset)) as P;
    case 31:
      return (reader.readString(offset)) as P;
    case 32:
      return (reader.readBool(offset)) as P;
    case 33:
      return (reader.readString(offset)) as P;
    case 34:
      return (reader.readBool(offset)) as P;
    case 35:
      return (reader.readString(offset)) as P;
    case 36:
      return (reader.readString(offset)) as P;
    case 37:
      return (reader.readString(offset)) as P;
    case 38:
      return (reader.readBool(offset)) as P;
    case 39:
      return (reader.readString(offset)) as P;
    case 40:
      return (reader.readString(offset)) as P;
    case 41:
      return (reader.readString(offset)) as P;
    case 42:
      return (_MeasurementDBpanelThicknessValueEnumMap[
              reader.readStringOrNull(offset)] ??
          PanelThickness.none) as P;
    case 43:
      return (_MeasurementDBpanelTypeValueEnumMap[
              reader.readStringOrNull(offset)] ??
          PanelType.none) as P;
    case 44:
      return (reader.readBool(offset)) as P;
    case 45:
      return (reader.readString(offset)) as P;
    case 46:
      return (reader.readString(offset)) as P;
    case 47:
      return (reader.readString(offset)) as P;
    case 48:
      return (_MeasurementDBprofileSystemValueEnumMap[
              reader.readStringOrNull(offset)] ??
          ProfileSystem.none) as P;
    case 49:
      return (_MeasurementDBquarterPositionValueEnumMap[
              reader.readStringOrNull(offset)] ??
          QuarterPosition.none) as P;
    case 50:
      return (reader.readString(offset)) as P;
    case 51:
      return (reader.readString(offset)) as P;
    case 52:
      return (reader.readBool(offset)) as P;
    case 53:
      return (_MeasurementDBrubberColorValueEnumMap[
              reader.readStringOrNull(offset)] ??
          RubberColor.none) as P;
    case 54:
      return (reader.readObjectOrNull<SchemeDB>(
        offset,
        SchemeDBSchema.deserialize,
        allOffsets,
      )) as P;
    case 55:
      return (reader.readBool(offset)) as P;
    case 56:
      return (reader.readBool(offset)) as P;
    case 57:
      return (reader.readBool(offset)) as P;
    case 58:
      return (reader.readString(offset)) as P;
    case 59:
      return (reader.readString(offset)) as P;
    case 60:
      return (reader.readString(offset)) as P;
    case 61:
      return (_MeasurementDBstandProfileValueEnumMap[
              reader.readStringOrNull(offset)] ??
          StandProfile.none) as P;
    case 62:
      return (reader.readBool(offset)) as P;
    case 63:
      return (reader.readString(offset)) as P;
    case 64:
      return (reader.readBool(offset)) as P;
    case 65:
      return (reader.readBool(offset)) as P;
    case 66:
      return (reader.readBool(offset)) as P;
    case 67:
      return (reader.readString(offset)) as P;
    case 68:
      return (_MeasurementDBwindowsillConnectorValueEnumMap[
              reader.readStringOrNull(offset)] ??
          WindowsillConnector.none) as P;
    case 69:
      return (_MeasurementDBwindowsillDepthValueEnumMap[
              reader.readStringOrNull(offset)] ??
          WindowsillDepth.none) as P;
    case 70:
      return (_MeasurementDBwindowsillExtensionValueEnumMap[
              reader.readStringOrNull(offset)] ??
          WindowsillExtension.none) as P;
    case 71:
      return (reader.readString(offset)) as P;
    case 72:
      return (_MeasurementDBwindowsillTypeValueEnumMap[
              reader.readStringOrNull(offset)] ??
          WindowsillType.none) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _MeasurementDBassemblyEnumValueMap = {
  r'none': r'none',
  r'regular': r'regular',
  r'warm': r'warm',
};
const _MeasurementDBassemblyValueEnumMap = {
  r'none': AssemblyType.none,
  r'regular': AssemblyType.regular,
  r'warm': AssemblyType.warm,
};
const _MeasurementDBbuildingTypeEnumValueMap = {
  r'none': r'none',
  r'panel': r'panel',
  r'brick': r'brick',
  r'wooden': r'wooden',
  r'monolithic': r'monolithic',
  r'brickMonolithic': r'brickMonolithic',
  r'block': r'block',
  r'blockMonolithic': r'blockMonolithic',
};
const _MeasurementDBbuildingTypeValueEnumMap = {
  r'none': BuildingType.none,
  r'panel': BuildingType.panel,
  r'brick': BuildingType.brick,
  r'wooden': BuildingType.wooden,
  r'monolithic': BuildingType.monolithic,
  r'brickMonolithic': BuildingType.brickMonolithic,
  r'block': BuildingType.block,
  r'blockMonolithic': BuildingType.blockMonolithic,
};
const _MeasurementDBdoorOpeningTypeEnumValueMap = {
  r'none': r'none',
  r'inward': r'inward',
  r'outward': r'outward',
};
const _MeasurementDBdoorOpeningTypeValueEnumMap = {
  r'none': DoorOpeningType.none,
  r'inward': DoorOpeningType.inward,
  r'outward': DoorOpeningType.outward,
};
const _MeasurementDBdoorstepEnumValueMap = {
  r'none': r'none',
  r'present': r'present',
  r'absent': r'absent',
};
const _MeasurementDBdoorstepValueEnumMap = {
  r'none': DoorstepOption.none,
  r'present': DoorstepOption.present,
  r'absent': DoorstepOption.absent,
};
const _MeasurementDBdoorstepTypeEnumValueMap = {
  r'none': r'none',
  r'frame': r'frame',
  r'aluminumLow': r'aluminumLow',
  r'aluminumHigh': r'aluminumHigh',
};
const _MeasurementDBdoorstepTypeValueEnumMap = {
  r'none': DoorstepType.none,
  r'frame': DoorstepType.frame,
  r'aluminumLow': DoorstepType.aluminumLow,
  r'aluminumHigh': DoorstepType.aluminumHigh,
};
const _MeasurementDBelevatorEnumValueMap = {
  r'none': r'none',
  r'cargo': r'cargo',
  r'passenger': r'passenger',
  r'passengerAndCargo': r'passengerAndCargo',
  r'absent': r'absent',
};
const _MeasurementDBelevatorValueEnumMap = {
  r'none': ElevatorOptions.none,
  r'cargo': ElevatorOptions.cargo,
  r'passenger': ElevatorOptions.passenger,
  r'passengerAndCargo': ElevatorOptions.passengerAndCargo,
  r'absent': ElevatorOptions.absent,
};
const _MeasurementDBflatStatusEnumValueMap = {
  r'none': r'none',
  r'repair': r'repair',
  r'living': r'living',
};
const _MeasurementDBflatStatusValueEnumMap = {
  r'none': FlatStatus.none,
  r'repair': FlatStatus.repair,
  r'living': FlatStatus.living,
};
const _MeasurementDBpanelThicknessEnumValueMap = {
  r'none': r'none',
  r'th24': r'th24',
  r'th32': r'th32',
  r'th40': r'th40',
};
const _MeasurementDBpanelThicknessValueEnumMap = {
  r'none': PanelThickness.none,
  r'th24': PanelThickness.th24,
  r'th32': PanelThickness.th32,
  r'th40': PanelThickness.th40,
};
const _MeasurementDBpanelTypeEnumValueMap = {
  r'none': r'none',
  r'sandwich': r'sandwich',
  r'metallized': r'metallized',
  r'whiteOneLaminated': r'whiteOneLaminated',
  r'whiteTwoLaminated': r'whiteTwoLaminated',
};
const _MeasurementDBpanelTypeValueEnumMap = {
  r'none': PanelType.none,
  r'sandwich': PanelType.sandwich,
  r'metallized': PanelType.metallized,
  r'whiteOneLaminated': PanelType.whiteOneLaminated,
  r'whiteTwoLaminated': PanelType.whiteTwoLaminated,
};
const _MeasurementDBprofileSystemEnumValueMap = {
  r'none': r'none',
  r'euroline': r'euroline',
};
const _MeasurementDBprofileSystemValueEnumMap = {
  r'none': ProfileSystem.none,
  r'euroline': ProfileSystem.euroline,
};
const _MeasurementDBquarterPositionEnumValueMap = {
  r'none': r'none',
  r'top': r'top',
  r'topBottom': r'topBottom',
  r'topSides': r'topSides',
  r'sides': r'sides',
  r'all': r'all',
};
const _MeasurementDBquarterPositionValueEnumMap = {
  r'none': QuarterPosition.none,
  r'top': QuarterPosition.top,
  r'topBottom': QuarterPosition.topBottom,
  r'topSides': QuarterPosition.topSides,
  r'sides': QuarterPosition.sides,
  r'all': QuarterPosition.all,
};
const _MeasurementDBrubberColorEnumValueMap = {
  r'none': r'none',
  r'black': r'black',
  r'gray': r'gray',
  r'caramel': r'caramel',
};
const _MeasurementDBrubberColorValueEnumMap = {
  r'none': RubberColor.none,
  r'black': RubberColor.black,
  r'gray': RubberColor.gray,
  r'caramel': RubberColor.caramel,
};
const _MeasurementDBstandProfileEnumValueMap = {
  r'none': r'none',
  r'regular': r'regular',
  r'warm': r'warm',
};
const _MeasurementDBstandProfileValueEnumMap = {
  r'none': StandProfile.none,
  r'regular': StandProfile.regular,
  r'warm': StandProfile.warm,
};
const _MeasurementDBwindowsillConnectorEnumValueMap = {
  r'none': r'none',
  r'd45': r'd45',
  r'd90': r'd90',
};
const _MeasurementDBwindowsillConnectorValueEnumMap = {
  r'none': WindowsillConnector.none,
  r'd45': WindowsillConnector.d45,
  r'd90': WindowsillConnector.d90,
};
const _MeasurementDBwindowsillDepthEnumValueMap = {
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
const _MeasurementDBwindowsillDepthValueEnumMap = {
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
const _MeasurementDBwindowsillExtensionEnumValueMap = {
  r'none': r'none',
  r'short': r'short',
  r'offSlab': r'offSlab',
};
const _MeasurementDBwindowsillExtensionValueEnumMap = {
  r'none': WindowsillExtension.none,
  r'short': WindowsillExtension.short,
  r'offSlab': WindowsillExtension.offSlab,
};
const _MeasurementDBwindowsillTypeEnumValueMap = {
  r'none': r'none',
  r'pvc': r'pvc',
  r'wooden': r'wooden',
  r'stone': r'stone',
};
const _MeasurementDBwindowsillTypeValueEnumMap = {
  r'none': WindowsillType.none,
  r'pvc': WindowsillType.pvc,
  r'wooden': WindowsillType.wooden,
  r'stone': WindowsillType.stone,
};

Id _measurementDBGetId(MeasurementDB object) {
  return object.innerId ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _measurementDBGetLinks(MeasurementDB object) {
  return [];
}

void _measurementDBAttach(
    IsarCollection<dynamic> col, Id id, MeasurementDB object) {
  object.innerId = id;
}

extension MeasurementDBByIndex on IsarCollection<MeasurementDB> {
  Future<MeasurementDB?> getById(String id) {
    return getByIndex(r'id', [id]);
  }

  MeasurementDB? getByIdSync(String id) {
    return getByIndexSync(r'id', [id]);
  }

  Future<bool> deleteById(String id) {
    return deleteByIndex(r'id', [id]);
  }

  bool deleteByIdSync(String id) {
    return deleteByIndexSync(r'id', [id]);
  }

  Future<List<MeasurementDB?>> getAllById(List<String> idValues) {
    final values = idValues.map((e) => [e]).toList();
    return getAllByIndex(r'id', values);
  }

  List<MeasurementDB?> getAllByIdSync(List<String> idValues) {
    final values = idValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'id', values);
  }

  Future<int> deleteAllById(List<String> idValues) {
    final values = idValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'id', values);
  }

  int deleteAllByIdSync(List<String> idValues) {
    final values = idValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'id', values);
  }

  Future<Id> putById(MeasurementDB object) {
    return putByIndex(r'id', object);
  }

  Id putByIdSync(MeasurementDB object, {bool saveLinks = true}) {
    return putByIndexSync(r'id', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllById(List<MeasurementDB> objects) {
    return putAllByIndex(r'id', objects);
  }

  List<Id> putAllByIdSync(List<MeasurementDB> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'id', objects, saveLinks: saveLinks);
  }
}

extension MeasurementDBQueryWhereSort
    on QueryBuilder<MeasurementDB, MeasurementDB, QWhere> {
  QueryBuilder<MeasurementDB, MeasurementDB, QAfterWhere> anyInnerId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension MeasurementDBQueryWhere
    on QueryBuilder<MeasurementDB, MeasurementDB, QWhereClause> {
  QueryBuilder<MeasurementDB, MeasurementDB, QAfterWhereClause> innerIdEqualTo(
      Id innerId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: innerId,
        upper: innerId,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterWhereClause>
      innerIdNotEqualTo(Id innerId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: innerId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: innerId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: innerId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: innerId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterWhereClause>
      innerIdGreaterThan(Id innerId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: innerId, includeLower: include),
      );
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterWhereClause> innerIdLessThan(
      Id innerId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: innerId, includeUpper: include),
      );
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterWhereClause> innerIdBetween(
    Id lowerInnerId,
    Id upperInnerId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerInnerId,
        includeLower: includeLower,
        upper: upperInnerId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterWhereClause> idEqualTo(
      String id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'id',
        value: [id],
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterWhereClause> idNotEqualTo(
      String id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'id',
              lower: [],
              upper: [id],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'id',
              lower: [id],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'id',
              lower: [id],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'id',
              lower: [],
              upper: [id],
              includeUpper: false,
            ));
      }
    });
  }
}

extension MeasurementDBQueryFilter
    on QueryBuilder<MeasurementDB, MeasurementDB, QFilterCondition> {
  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      apartmentEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'apartment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      apartmentGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'apartment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      apartmentLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'apartment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      apartmentBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'apartment',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      apartmentStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'apartment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      apartmentEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'apartment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      apartmentContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'apartment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      apartmentMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'apartment',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      apartmentIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'apartment',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      apartmentIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'apartment',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      assemblyEqualTo(
    AssemblyType value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'assembly',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      assemblyGreaterThan(
    AssemblyType value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'assembly',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      assemblyLessThan(
    AssemblyType value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'assembly',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      assemblyBetween(
    AssemblyType lower,
    AssemblyType upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'assembly',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      assemblyStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'assembly',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      assemblyEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'assembly',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      assemblyContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'assembly',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      assemblyMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'assembly',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      assemblyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'assembly',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      assemblyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'assembly',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      blockEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'block',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      blockGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'block',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      blockLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'block',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      blockBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'block',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      blockStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'block',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      blockEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'block',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      blockContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'block',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      blockMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'block',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      blockIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'block',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      blockIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'block',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      buildingEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'building',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      buildingGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'building',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      buildingLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'building',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      buildingBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'building',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      buildingStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'building',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      buildingEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'building',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      buildingContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'building',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      buildingMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'building',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      buildingIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'building',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      buildingIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'building',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      buildingTypeEqualTo(
    BuildingType value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'buildingType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      buildingTypeGreaterThan(
    BuildingType value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'buildingType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      buildingTypeLessThan(
    BuildingType value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'buildingType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      buildingTypeBetween(
    BuildingType lower,
    BuildingType upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'buildingType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      buildingTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'buildingType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      buildingTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'buildingType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      buildingTypeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'buildingType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      buildingTypeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'buildingType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      buildingTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'buildingType',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      buildingTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'buildingType',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      canopyColorContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'canopyColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      canopyColorMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'canopyColor',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      canopyColorIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'canopyColor',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      canopyColorIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'canopyColor',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      canopySizeEqualTo(
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      canopySizeBetween(
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      canopySizeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'canopySize',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      canopySizeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'canopySize',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      canopySizeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'canopySize',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      canopySizeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'canopySize',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      canopyTypeEqualTo(
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      canopyTypeBetween(
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      canopyTypeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'canopyType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      canopyTypeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'canopyType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      canopyTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'canopyType',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      canopyTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'canopyType',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition> cityEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'city',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      cityGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'city',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      cityLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'city',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition> cityBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'city',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      cityStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'city',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      cityEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'city',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      cityContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'city',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition> cityMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'city',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      cityIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'city',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      cityIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'city',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      clientNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'clientName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      clientNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'clientName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      clientNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'clientName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      clientNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'clientName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      clientNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'clientName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      clientNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'clientName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      clientNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'clientName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      clientNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'clientName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      clientNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'clientName',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      clientNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'clientName',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      commentEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'comment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      commentGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'comment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      commentLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'comment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      commentBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'comment',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      commentStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'comment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      commentEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'comment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      commentContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'comment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      commentMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'comment',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      commentIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'comment',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      commentIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'comment',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition> costEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cost',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      costGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cost',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      costLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cost',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition> costBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cost',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      costStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'cost',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      costEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'cost',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      costContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'cost',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition> costMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'cost',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      costIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cost',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      costIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'cost',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition> dateEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      dateGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      dateLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition> dateBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'date',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      deliveryEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'delivery',
        value: value,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      disassemblyEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'disassembly',
        value: value,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      districtEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'district',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      districtGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'district',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      districtLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'district',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      districtBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'district',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      districtStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'district',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      districtEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'district',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      districtContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'district',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      districtMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'district',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      districtIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'district',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      districtIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'district',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      doorOpeningTypeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'doorOpeningType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      doorOpeningTypeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'doorOpeningType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      doorOpeningTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'doorOpeningType',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      doorOpeningTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'doorOpeningType',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      doorphoneEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'doorphone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      doorphoneGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'doorphone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      doorphoneLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'doorphone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      doorphoneBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'doorphone',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      doorphoneStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'doorphone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      doorphoneEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'doorphone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      doorphoneContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'doorphone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      doorphoneMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'doorphone',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      doorphoneIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'doorphone',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      doorphoneIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'doorphone',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      doorstepEqualTo(
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      doorstepLessThan(
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      doorstepBetween(
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      doorstepEndsWith(
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      doorstepContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'doorstep',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      doorstepMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'doorstep',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      doorstepIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'doorstep',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      doorstepIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'doorstep',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      doorstepTypeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'doorstepType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      doorstepTypeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'doorstepType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      doorstepTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'doorstepType',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      doorstepTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'doorstepType',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      drainageColorContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'drainageColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      drainageColorMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'drainageColor',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      drainageColorIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'drainageColor',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      drainageColorIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'drainageColor',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      drainageDepthContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'drainageDepth',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      drainageDepthMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'drainageDepth',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      drainageDepthIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'drainageDepth',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      drainageDepthIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'drainageDepth',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      drainageEndCapEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'drainageEndCap',
        value: value,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      drainageWidthContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'drainageWidth',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      drainageWidthMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'drainageWidth',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      drainageWidthIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'drainageWidth',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      drainageWidthIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'drainageWidth',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      elevatorEqualTo(
    ElevatorOptions value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'elevator',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      elevatorGreaterThan(
    ElevatorOptions value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'elevator',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      elevatorLessThan(
    ElevatorOptions value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'elevator',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      elevatorBetween(
    ElevatorOptions lower,
    ElevatorOptions upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'elevator',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      elevatorStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'elevator',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      elevatorEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'elevator',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      elevatorContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'elevator',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      elevatorMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'elevator',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      elevatorIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'elevator',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      elevatorIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'elevator',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      entranceEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'entrance',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      entranceGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'entrance',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      entranceLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'entrance',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      entranceBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'entrance',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      entranceStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'entrance',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      entranceEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'entrance',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      entranceContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'entrance',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      entranceMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'entrance',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      entranceIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'entrance',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      entranceIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'entrance',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      estimatedAssemblyTimeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'estimatedAssemblyTime',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      estimatedAssemblyTimeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'estimatedAssemblyTime',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      estimatedAssemblyTimeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'estimatedAssemblyTime',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      estimatedAssemblyTimeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'estimatedAssemblyTime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      estimatedAssemblyTimeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'estimatedAssemblyTime',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      estimatedAssemblyTimeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'estimatedAssemblyTime',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      estimatedAssemblyTimeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'estimatedAssemblyTime',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      estimatedAssemblyTimeMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'estimatedAssemblyTime',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      estimatedAssemblyTimeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'estimatedAssemblyTime',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      estimatedAssemblyTimeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'estimatedAssemblyTime',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      extensionSheathingEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'extensionSheathing',
        value: value,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      flatStatusEqualTo(
    FlatStatus value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'flatStatus',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      flatStatusGreaterThan(
    FlatStatus value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'flatStatus',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      flatStatusLessThan(
    FlatStatus value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'flatStatus',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      flatStatusBetween(
    FlatStatus lower,
    FlatStatus upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'flatStatus',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      flatStatusStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'flatStatus',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      flatStatusEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'flatStatus',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      flatStatusContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'flatStatus',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      flatStatusMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'flatStatus',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      flatStatusIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'flatStatus',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      flatStatusIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'flatStatus',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      floorEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'floor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      floorGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'floor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      floorLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'floor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      floorBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'floor',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      floorStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'floor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      floorEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'floor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      floorContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'floor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      floorMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'floor',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      floorIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'floor',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      floorIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'floor',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      furnitureEqualTo(
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      furnitureLessThan(
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      furnitureBetween(
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      furnitureEndsWith(
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      furnitureContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'furniture',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      furnitureMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'furniture',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      furnitureIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'furniture',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      furnitureIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'furniture',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      garbageRemovalEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'garbageRemoval',
        value: value,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      glassUnitEqualTo(
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      glassUnitLessThan(
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      glassUnitBetween(
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      glassUnitEndsWith(
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      glassUnitContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'glassUnit',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      glassUnitMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'glassUnit',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      glassUnitIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'glassUnit',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      glassUnitIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'glassUnit',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      gridDisassemblyEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'gridDisassembly',
        value: value,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      housingCoopNumberEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'housingCoopNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      housingCoopNumberGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'housingCoopNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      housingCoopNumberLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'housingCoopNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      housingCoopNumberBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'housingCoopNumber',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      housingCoopNumberStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'housingCoopNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      housingCoopNumberEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'housingCoopNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      housingCoopNumberContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'housingCoopNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      housingCoopNumberMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'housingCoopNumber',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      housingCoopNumberIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'housingCoopNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      housingCoopNumberIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'housingCoopNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      howDiscoveredEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'howDiscovered',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      howDiscoveredGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'howDiscovered',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      howDiscoveredLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'howDiscovered',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      howDiscoveredBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'howDiscovered',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      howDiscoveredStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'howDiscovered',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      howDiscoveredEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'howDiscovered',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      howDiscoveredContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'howDiscovered',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      howDiscoveredMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'howDiscovered',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      howDiscoveredIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'howDiscovered',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      howDiscoveredIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'howDiscovered',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition> idEqualTo(
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      idGreaterThan(
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition> idBetween(
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      idStartsWith(
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition> idEndsWith(
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition> idContains(
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition> idMatches(
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      idIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      idIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      innerIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'innerId',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      innerIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'innerId',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      innerIdEqualTo(Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'innerId',
        value: value,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      innerIdGreaterThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'innerId',
        value: value,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      innerIdLessThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'innerId',
        value: value,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      innerIdBetween(
    Id? lower,
    Id? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'innerId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      insulationEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'insulation',
        value: value,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      laminationExternalContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'laminationExternal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      laminationExternalMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'laminationExternal',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      laminationExternalIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'laminationExternal',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      laminationExternalIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'laminationExternal',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      laminationInternalContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'laminationInternal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      laminationInternalMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'laminationInternal',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      laminationInternalIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'laminationInternal',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      laminationInternalIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'laminationInternal',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      measurerEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'measurer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      measurerGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'measurer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      measurerLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'measurer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      measurerBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'measurer',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      measurerStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'measurer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      measurerEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'measurer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      measurerContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'measurer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      measurerMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'measurer',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      measurerIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'measurer',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      measurerIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'measurer',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      panelThicknessContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'panelThickness',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      panelThicknessMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'panelThickness',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      panelThicknessIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'panelThickness',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      panelThicknessIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'panelThickness',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      panelTypeEqualTo(
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      panelTypeLessThan(
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      panelTypeBetween(
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      panelTypeEndsWith(
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      panelTypeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'panelType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      panelTypeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'panelType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      panelTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'panelType',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      panelTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'panelType',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      parapetReinforcementEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'parapetReinforcement',
        value: value,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      phoneNumberAdditionalEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'phoneNumberAdditional',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      phoneNumberAdditionalGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'phoneNumberAdditional',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      phoneNumberAdditionalLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'phoneNumberAdditional',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      phoneNumberAdditionalBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'phoneNumberAdditional',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      phoneNumberAdditionalStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'phoneNumberAdditional',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      phoneNumberAdditionalEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'phoneNumberAdditional',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      phoneNumberAdditionalContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'phoneNumberAdditional',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      phoneNumberAdditionalMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'phoneNumberAdditional',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      phoneNumberAdditionalIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'phoneNumberAdditional',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      phoneNumberAdditionalIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'phoneNumberAdditional',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      phoneNumberMainEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'phoneNumberMain',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      phoneNumberMainGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'phoneNumberMain',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      phoneNumberMainLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'phoneNumberMain',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      phoneNumberMainBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'phoneNumberMain',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      phoneNumberMainStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'phoneNumberMain',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      phoneNumberMainEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'phoneNumberMain',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      phoneNumberMainContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'phoneNumberMain',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      phoneNumberMainMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'phoneNumberMain',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      phoneNumberMainIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'phoneNumberMain',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      phoneNumberMainIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'phoneNumberMain',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      prepaymentEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'prepayment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      prepaymentGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'prepayment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      prepaymentLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'prepayment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      prepaymentBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'prepayment',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      prepaymentStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'prepayment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      prepaymentEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'prepayment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      prepaymentContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'prepayment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      prepaymentMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'prepayment',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      prepaymentIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'prepayment',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      prepaymentIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'prepayment',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      profileSystemEqualTo(
    ProfileSystem value, {
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      profileSystemGreaterThan(
    ProfileSystem value, {
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      profileSystemLessThan(
    ProfileSystem value, {
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      profileSystemBetween(
    ProfileSystem lower,
    ProfileSystem upper, {
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      profileSystemContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'profileSystem',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      profileSystemMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'profileSystem',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      profileSystemIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'profileSystem',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      profileSystemIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'profileSystem',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      quarterPositionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'quarterPosition',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      quarterPositionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'quarterPosition',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      quarterPositionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'quarterPosition',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      quarterPositionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'quarterPosition',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      quarterSizeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'quarterSize',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      quarterSizeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'quarterSize',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      quarterSizeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'quarterSize',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      quarterSizeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'quarterSize',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      residentialComplexEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'residentialComplex',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      residentialComplexGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'residentialComplex',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      residentialComplexLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'residentialComplex',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      residentialComplexBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'residentialComplex',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      residentialComplexStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'residentialComplex',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      residentialComplexEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'residentialComplex',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      residentialComplexContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'residentialComplex',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      residentialComplexMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'residentialComplex',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      residentialComplexIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'residentialComplex',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      residentialComplexIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'residentialComplex',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      roofDisassemblyEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'roofDisassembly',
        value: value,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      rubberColorContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'rubberColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      rubberColorMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'rubberColor',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      rubberColorIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rubberColor',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      rubberColorIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'rubberColor',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      schemeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'scheme',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      schemeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'scheme',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      screedDisassemblyEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'screedDisassembly',
        value: value,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      sealingEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sealing',
        value: value,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      slabExtensionEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'slabExtension',
        value: value,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      slopeDepthEqualTo(
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      slopeDepthBetween(
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      slopeDepthContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'slopeDepth',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      slopeDepthMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'slopeDepth',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      slopeDepthIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'slopeDepth',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      slopeDepthIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'slopeDepth',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      slopeLengthContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'slopeLength',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      slopeLengthMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'slopeLength',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      slopeLengthIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'slopeLength',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      slopeLengthIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'slopeLength',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      slopeQuantityContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'slopeQuantity',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      slopeQuantityMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'slopeQuantity',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      slopeQuantityIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'slopeQuantity',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      slopeQuantityIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'slopeQuantity',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      standProfileContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'standProfile',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      standProfileMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'standProfile',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      standProfileIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'standProfile',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      standProfileIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'standProfile',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      staticCalculationEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'staticCalculation',
        value: value,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      streetEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'street',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      streetGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'street',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      streetLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'street',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      streetBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'street',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      streetStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'street',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      streetEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'street',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      streetContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'street',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      streetMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'street',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      streetIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'street',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      streetIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'street',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      unloadingEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'unloading',
        value: value,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      vacuumCleanerEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'vacuumCleaner',
        value: value,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      windowsillAssemblyEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'windowsillAssembly',
        value: value,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      windowsillColorContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'windowsillColor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      windowsillColorMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'windowsillColor',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      windowsillColorIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'windowsillColor',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      windowsillColorIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'windowsillColor',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      windowsillConnectorContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'windowsillConnector',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      windowsillConnectorMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'windowsillConnector',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      windowsillConnectorIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'windowsillConnector',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      windowsillConnectorIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'windowsillConnector',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      windowsillDepthContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'windowsillDepth',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      windowsillDepthMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'windowsillDepth',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      windowsillDepthIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'windowsillDepth',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      windowsillDepthIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'windowsillDepth',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      windowsillExtensionEqualTo(
    WindowsillExtension value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'windowsillExtension',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      windowsillExtensionGreaterThan(
    WindowsillExtension value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'windowsillExtension',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      windowsillExtensionLessThan(
    WindowsillExtension value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'windowsillExtension',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      windowsillExtensionBetween(
    WindowsillExtension lower,
    WindowsillExtension upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'windowsillExtension',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      windowsillExtensionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'windowsillExtension',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      windowsillExtensionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'windowsillExtension',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      windowsillExtensionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'windowsillExtension',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      windowsillExtensionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'windowsillExtension',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      windowsillExtensionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'windowsillExtension',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      windowsillExtensionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'windowsillExtension',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      windowsillSizeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'windowsillSize',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      windowsillSizeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'windowsillSize',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      windowsillSizeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'windowsillSize',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      windowsillSizeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'windowsillSize',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      windowsillTypeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'windowsillType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      windowsillTypeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'windowsillType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      windowsillTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'windowsillType',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      windowsillTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'windowsillType',
        value: '',
      ));
    });
  }
}

extension MeasurementDBQueryObject
    on QueryBuilder<MeasurementDB, MeasurementDB, QFilterCondition> {
  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      expanderOption(FilterQuery<ExpanderOptionDB> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'expanderOption');
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition> scheme(
      FilterQuery<SchemeDB> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'scheme');
    });
  }
}

extension MeasurementDBQueryLinks
    on QueryBuilder<MeasurementDB, MeasurementDB, QFilterCondition> {}

extension MeasurementDBQuerySortBy
    on QueryBuilder<MeasurementDB, MeasurementDB, QSortBy> {
  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> sortByApartment() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'apartment', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByApartmentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'apartment', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> sortByAssembly() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'assembly', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByAssemblyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'assembly', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> sortByBlock() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'block', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> sortByBlockDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'block', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> sortByBuilding() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'building', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByBuildingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'building', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByBuildingType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'buildingType', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByBuildingTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'buildingType', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> sortByCanopyColor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'canopyColor', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByCanopyColorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'canopyColor', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> sortByCanopySize() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'canopySize', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByCanopySizeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'canopySize', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> sortByCanopyType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'canopyType', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByCanopyTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'canopyType', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> sortByCity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'city', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> sortByCityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'city', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> sortByClientName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'clientName', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByClientNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'clientName', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> sortByComment() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'comment', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> sortByCommentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'comment', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> sortByCost() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cost', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> sortByCostDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cost', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> sortByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> sortByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> sortByDelivery() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'delivery', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByDeliveryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'delivery', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> sortByDisassembly() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'disassembly', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByDisassemblyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'disassembly', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> sortByDistrict() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'district', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByDistrictDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'district', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByDoorOpeningType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'doorOpeningType', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByDoorOpeningTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'doorOpeningType', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> sortByDoorphone() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'doorphone', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByDoorphoneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'doorphone', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> sortByDoorstep() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'doorstep', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByDoorstepDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'doorstep', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByDoorstepType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'doorstepType', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByDoorstepTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'doorstepType', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByDrainageColor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'drainageColor', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByDrainageColorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'drainageColor', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByDrainageDepth() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'drainageDepth', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByDrainageDepthDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'drainageDepth', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByDrainageEndCap() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'drainageEndCap', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByDrainageEndCapDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'drainageEndCap', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByDrainageWidth() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'drainageWidth', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByDrainageWidthDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'drainageWidth', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> sortByElevator() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'elevator', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByElevatorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'elevator', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> sortByEntrance() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'entrance', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByEntranceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'entrance', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByEstimatedAssemblyTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estimatedAssemblyTime', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByEstimatedAssemblyTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estimatedAssemblyTime', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByExtensionSheathing() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'extensionSheathing', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByExtensionSheathingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'extensionSheathing', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> sortByFlatStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'flatStatus', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByFlatStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'flatStatus', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> sortByFloor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'floor', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> sortByFloorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'floor', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> sortByFurniture() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'furniture', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByFurnitureDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'furniture', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByGarbageRemoval() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'garbageRemoval', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByGarbageRemovalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'garbageRemoval', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> sortByGlassUnit() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'glassUnit', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByGlassUnitDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'glassUnit', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByGridDisassembly() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gridDisassembly', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByGridDisassemblyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gridDisassembly', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByHousingCoopNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'housingCoopNumber', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByHousingCoopNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'housingCoopNumber', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByHowDiscovered() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'howDiscovered', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByHowDiscoveredDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'howDiscovered', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> sortByInsulation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'insulation', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByInsulationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'insulation', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByLaminationExternal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'laminationExternal', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByLaminationExternalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'laminationExternal', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByLaminationInternal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'laminationInternal', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByLaminationInternalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'laminationInternal', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> sortByMeasurer() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'measurer', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByMeasurerDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'measurer', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByPanelThickness() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'panelThickness', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByPanelThicknessDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'panelThickness', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> sortByPanelType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'panelType', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByPanelTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'panelType', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByParapetReinforcement() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'parapetReinforcement', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByParapetReinforcementDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'parapetReinforcement', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByPhoneNumberAdditional() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phoneNumberAdditional', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByPhoneNumberAdditionalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phoneNumberAdditional', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByPhoneNumberMain() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phoneNumberMain', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByPhoneNumberMainDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phoneNumberMain', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> sortByPrepayment() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prepayment', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByPrepaymentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prepayment', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByProfileSystem() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'profileSystem', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByProfileSystemDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'profileSystem', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByQuarterPosition() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quarterPosition', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByQuarterPositionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quarterPosition', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> sortByQuarterSize() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quarterSize', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByQuarterSizeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quarterSize', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByResidentialComplex() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'residentialComplex', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByResidentialComplexDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'residentialComplex', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByRoofDisassembly() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'roofDisassembly', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByRoofDisassemblyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'roofDisassembly', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> sortByRubberColor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rubberColor', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByRubberColorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rubberColor', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByScreedDisassembly() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'screedDisassembly', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByScreedDisassemblyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'screedDisassembly', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> sortBySealing() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sealing', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> sortBySealingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sealing', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortBySlabExtension() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'slabExtension', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortBySlabExtensionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'slabExtension', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> sortBySlopeDepth() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'slopeDepth', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortBySlopeDepthDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'slopeDepth', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> sortBySlopeLength() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'slopeLength', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortBySlopeLengthDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'slopeLength', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortBySlopeQuantity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'slopeQuantity', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortBySlopeQuantityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'slopeQuantity', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByStandProfile() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'standProfile', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByStandProfileDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'standProfile', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByStaticCalculation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'staticCalculation', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByStaticCalculationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'staticCalculation', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> sortByStreet() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'street', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> sortByStreetDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'street', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> sortByUnloading() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unloading', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByUnloadingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unloading', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByVacuumCleaner() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vacuumCleaner', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByVacuumCleanerDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vacuumCleaner', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByWindowsillAssembly() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'windowsillAssembly', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByWindowsillAssemblyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'windowsillAssembly', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByWindowsillColor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'windowsillColor', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByWindowsillColorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'windowsillColor', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByWindowsillConnector() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'windowsillConnector', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByWindowsillConnectorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'windowsillConnector', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByWindowsillDepth() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'windowsillDepth', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByWindowsillDepthDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'windowsillDepth', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByWindowsillExtension() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'windowsillExtension', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByWindowsillExtensionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'windowsillExtension', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByWindowsillSize() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'windowsillSize', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByWindowsillSizeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'windowsillSize', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByWindowsillType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'windowsillType', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByWindowsillTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'windowsillType', Sort.desc);
    });
  }
}

extension MeasurementDBQuerySortThenBy
    on QueryBuilder<MeasurementDB, MeasurementDB, QSortThenBy> {
  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> thenByApartment() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'apartment', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByApartmentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'apartment', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> thenByAssembly() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'assembly', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByAssemblyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'assembly', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> thenByBlock() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'block', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> thenByBlockDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'block', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> thenByBuilding() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'building', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByBuildingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'building', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByBuildingType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'buildingType', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByBuildingTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'buildingType', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> thenByCanopyColor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'canopyColor', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByCanopyColorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'canopyColor', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> thenByCanopySize() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'canopySize', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByCanopySizeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'canopySize', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> thenByCanopyType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'canopyType', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByCanopyTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'canopyType', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> thenByCity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'city', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> thenByCityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'city', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> thenByClientName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'clientName', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByClientNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'clientName', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> thenByComment() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'comment', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> thenByCommentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'comment', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> thenByCost() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cost', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> thenByCostDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cost', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> thenByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> thenByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> thenByDelivery() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'delivery', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByDeliveryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'delivery', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> thenByDisassembly() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'disassembly', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByDisassemblyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'disassembly', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> thenByDistrict() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'district', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByDistrictDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'district', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByDoorOpeningType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'doorOpeningType', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByDoorOpeningTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'doorOpeningType', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> thenByDoorphone() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'doorphone', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByDoorphoneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'doorphone', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> thenByDoorstep() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'doorstep', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByDoorstepDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'doorstep', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByDoorstepType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'doorstepType', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByDoorstepTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'doorstepType', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByDrainageColor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'drainageColor', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByDrainageColorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'drainageColor', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByDrainageDepth() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'drainageDepth', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByDrainageDepthDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'drainageDepth', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByDrainageEndCap() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'drainageEndCap', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByDrainageEndCapDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'drainageEndCap', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByDrainageWidth() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'drainageWidth', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByDrainageWidthDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'drainageWidth', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> thenByElevator() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'elevator', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByElevatorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'elevator', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> thenByEntrance() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'entrance', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByEntranceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'entrance', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByEstimatedAssemblyTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estimatedAssemblyTime', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByEstimatedAssemblyTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'estimatedAssemblyTime', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByExtensionSheathing() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'extensionSheathing', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByExtensionSheathingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'extensionSheathing', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> thenByFlatStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'flatStatus', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByFlatStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'flatStatus', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> thenByFloor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'floor', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> thenByFloorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'floor', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> thenByFurniture() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'furniture', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByFurnitureDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'furniture', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByGarbageRemoval() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'garbageRemoval', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByGarbageRemovalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'garbageRemoval', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> thenByGlassUnit() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'glassUnit', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByGlassUnitDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'glassUnit', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByGridDisassembly() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gridDisassembly', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByGridDisassemblyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gridDisassembly', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByHousingCoopNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'housingCoopNumber', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByHousingCoopNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'housingCoopNumber', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByHowDiscovered() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'howDiscovered', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByHowDiscoveredDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'howDiscovered', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> thenByInnerId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'innerId', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> thenByInnerIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'innerId', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> thenByInsulation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'insulation', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByInsulationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'insulation', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByLaminationExternal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'laminationExternal', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByLaminationExternalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'laminationExternal', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByLaminationInternal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'laminationInternal', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByLaminationInternalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'laminationInternal', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> thenByMeasurer() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'measurer', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByMeasurerDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'measurer', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByPanelThickness() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'panelThickness', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByPanelThicknessDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'panelThickness', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> thenByPanelType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'panelType', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByPanelTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'panelType', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByParapetReinforcement() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'parapetReinforcement', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByParapetReinforcementDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'parapetReinforcement', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByPhoneNumberAdditional() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phoneNumberAdditional', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByPhoneNumberAdditionalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phoneNumberAdditional', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByPhoneNumberMain() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phoneNumberMain', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByPhoneNumberMainDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phoneNumberMain', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> thenByPrepayment() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prepayment', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByPrepaymentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prepayment', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByProfileSystem() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'profileSystem', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByProfileSystemDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'profileSystem', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByQuarterPosition() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quarterPosition', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByQuarterPositionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quarterPosition', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> thenByQuarterSize() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quarterSize', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByQuarterSizeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quarterSize', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByResidentialComplex() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'residentialComplex', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByResidentialComplexDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'residentialComplex', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByRoofDisassembly() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'roofDisassembly', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByRoofDisassemblyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'roofDisassembly', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> thenByRubberColor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rubberColor', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByRubberColorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rubberColor', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByScreedDisassembly() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'screedDisassembly', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByScreedDisassemblyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'screedDisassembly', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> thenBySealing() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sealing', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> thenBySealingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sealing', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenBySlabExtension() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'slabExtension', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenBySlabExtensionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'slabExtension', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> thenBySlopeDepth() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'slopeDepth', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenBySlopeDepthDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'slopeDepth', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> thenBySlopeLength() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'slopeLength', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenBySlopeLengthDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'slopeLength', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenBySlopeQuantity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'slopeQuantity', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenBySlopeQuantityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'slopeQuantity', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByStandProfile() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'standProfile', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByStandProfileDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'standProfile', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByStaticCalculation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'staticCalculation', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByStaticCalculationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'staticCalculation', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> thenByStreet() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'street', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> thenByStreetDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'street', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> thenByUnloading() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unloading', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByUnloadingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unloading', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByVacuumCleaner() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vacuumCleaner', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByVacuumCleanerDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vacuumCleaner', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByWindowsillAssembly() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'windowsillAssembly', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByWindowsillAssemblyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'windowsillAssembly', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByWindowsillColor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'windowsillColor', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByWindowsillColorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'windowsillColor', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByWindowsillConnector() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'windowsillConnector', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByWindowsillConnectorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'windowsillConnector', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByWindowsillDepth() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'windowsillDepth', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByWindowsillDepthDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'windowsillDepth', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByWindowsillExtension() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'windowsillExtension', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByWindowsillExtensionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'windowsillExtension', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByWindowsillSize() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'windowsillSize', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByWindowsillSizeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'windowsillSize', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByWindowsillType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'windowsillType', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByWindowsillTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'windowsillType', Sort.desc);
    });
  }
}

extension MeasurementDBQueryWhereDistinct
    on QueryBuilder<MeasurementDB, MeasurementDB, QDistinct> {
  QueryBuilder<MeasurementDB, MeasurementDB, QDistinct> distinctByApartment(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'apartment', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QDistinct> distinctByAssembly(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'assembly', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QDistinct> distinctByBlock(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'block', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QDistinct> distinctByBuilding(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'building', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QDistinct> distinctByBuildingType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'buildingType', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QDistinct> distinctByCanopyColor(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'canopyColor', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QDistinct> distinctByCanopySize(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'canopySize', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QDistinct> distinctByCanopyType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'canopyType', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QDistinct> distinctByCity(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'city', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QDistinct> distinctByClientName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'clientName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QDistinct> distinctByComment(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'comment', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QDistinct> distinctByCost(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cost', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QDistinct> distinctByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'date');
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QDistinct> distinctByDelivery() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'delivery');
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QDistinct>
      distinctByDisassembly() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'disassembly');
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QDistinct> distinctByDistrict(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'district', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QDistinct>
      distinctByDoorOpeningType({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'doorOpeningType',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QDistinct> distinctByDoorphone(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'doorphone', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QDistinct> distinctByDoorstep(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'doorstep', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QDistinct> distinctByDoorstepType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'doorstepType', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QDistinct> distinctByDrainageColor(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'drainageColor',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QDistinct> distinctByDrainageDepth(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'drainageDepth',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QDistinct>
      distinctByDrainageEndCap() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'drainageEndCap');
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QDistinct> distinctByDrainageWidth(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'drainageWidth',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QDistinct> distinctByElevator(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'elevator', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QDistinct> distinctByEntrance(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'entrance', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QDistinct>
      distinctByEstimatedAssemblyTime({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'estimatedAssemblyTime',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QDistinct>
      distinctByExtensionSheathing() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'extensionSheathing');
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QDistinct> distinctByFlatStatus(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'flatStatus', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QDistinct> distinctByFloor(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'floor', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QDistinct> distinctByFurniture(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'furniture', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QDistinct>
      distinctByGarbageRemoval() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'garbageRemoval');
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QDistinct> distinctByGlassUnit(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'glassUnit', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QDistinct>
      distinctByGridDisassembly() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'gridDisassembly');
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QDistinct>
      distinctByHousingCoopNumber({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'housingCoopNumber',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QDistinct> distinctByHowDiscovered(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'howDiscovered',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QDistinct> distinctById(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'id', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QDistinct> distinctByInsulation() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'insulation');
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QDistinct>
      distinctByLaminationExternal({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'laminationExternal',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QDistinct>
      distinctByLaminationInternal({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'laminationInternal',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QDistinct> distinctByMeasurer(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'measurer', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QDistinct>
      distinctByPanelThickness({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'panelThickness',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QDistinct> distinctByPanelType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'panelType', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QDistinct>
      distinctByParapetReinforcement() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'parapetReinforcement');
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QDistinct>
      distinctByPhoneNumberAdditional({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'phoneNumberAdditional',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QDistinct>
      distinctByPhoneNumberMain({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'phoneNumberMain',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QDistinct> distinctByPrepayment(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'prepayment', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QDistinct> distinctByProfileSystem(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'profileSystem',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QDistinct>
      distinctByQuarterPosition({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'quarterPosition',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QDistinct> distinctByQuarterSize(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'quarterSize', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QDistinct>
      distinctByResidentialComplex({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'residentialComplex',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QDistinct>
      distinctByRoofDisassembly() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'roofDisassembly');
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QDistinct> distinctByRubberColor(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'rubberColor', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QDistinct>
      distinctByScreedDisassembly() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'screedDisassembly');
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QDistinct> distinctBySealing() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sealing');
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QDistinct>
      distinctBySlabExtension() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'slabExtension');
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QDistinct> distinctBySlopeDepth(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'slopeDepth', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QDistinct> distinctBySlopeLength(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'slopeLength', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QDistinct> distinctBySlopeQuantity(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'slopeQuantity',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QDistinct> distinctByStandProfile(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'standProfile', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QDistinct>
      distinctByStaticCalculation() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'staticCalculation');
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QDistinct> distinctByStreet(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'street', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QDistinct> distinctByUnloading() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'unloading');
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QDistinct>
      distinctByVacuumCleaner() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'vacuumCleaner');
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QDistinct>
      distinctByWindowsillAssembly() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'windowsillAssembly');
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QDistinct>
      distinctByWindowsillColor({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'windowsillColor',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QDistinct>
      distinctByWindowsillConnector({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'windowsillConnector',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QDistinct>
      distinctByWindowsillDepth({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'windowsillDepth',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QDistinct>
      distinctByWindowsillExtension({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'windowsillExtension',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QDistinct>
      distinctByWindowsillSize({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'windowsillSize',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QDistinct>
      distinctByWindowsillType({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'windowsillType',
          caseSensitive: caseSensitive);
    });
  }
}

extension MeasurementDBQueryProperty
    on QueryBuilder<MeasurementDB, MeasurementDB, QQueryProperty> {
  QueryBuilder<MeasurementDB, int, QQueryOperations> innerIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'innerId');
    });
  }

  QueryBuilder<MeasurementDB, String, QQueryOperations> apartmentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'apartment');
    });
  }

  QueryBuilder<MeasurementDB, AssemblyType, QQueryOperations>
      assemblyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'assembly');
    });
  }

  QueryBuilder<MeasurementDB, String, QQueryOperations> blockProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'block');
    });
  }

  QueryBuilder<MeasurementDB, String, QQueryOperations> buildingProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'building');
    });
  }

  QueryBuilder<MeasurementDB, BuildingType, QQueryOperations>
      buildingTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'buildingType');
    });
  }

  QueryBuilder<MeasurementDB, String, QQueryOperations> canopyColorProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'canopyColor');
    });
  }

  QueryBuilder<MeasurementDB, String, QQueryOperations> canopySizeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'canopySize');
    });
  }

  QueryBuilder<MeasurementDB, String, QQueryOperations> canopyTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'canopyType');
    });
  }

  QueryBuilder<MeasurementDB, String, QQueryOperations> cityProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'city');
    });
  }

  QueryBuilder<MeasurementDB, String, QQueryOperations> clientNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'clientName');
    });
  }

  QueryBuilder<MeasurementDB, String, QQueryOperations> commentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'comment');
    });
  }

  QueryBuilder<MeasurementDB, String, QQueryOperations> costProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cost');
    });
  }

  QueryBuilder<MeasurementDB, DateTime, QQueryOperations> dateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'date');
    });
  }

  QueryBuilder<MeasurementDB, bool, QQueryOperations> deliveryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'delivery');
    });
  }

  QueryBuilder<MeasurementDB, bool, QQueryOperations> disassemblyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'disassembly');
    });
  }

  QueryBuilder<MeasurementDB, String, QQueryOperations> districtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'district');
    });
  }

  QueryBuilder<MeasurementDB, DoorOpeningType, QQueryOperations>
      doorOpeningTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'doorOpeningType');
    });
  }

  QueryBuilder<MeasurementDB, String, QQueryOperations> doorphoneProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'doorphone');
    });
  }

  QueryBuilder<MeasurementDB, DoorstepOption, QQueryOperations>
      doorstepProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'doorstep');
    });
  }

  QueryBuilder<MeasurementDB, DoorstepType, QQueryOperations>
      doorstepTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'doorstepType');
    });
  }

  QueryBuilder<MeasurementDB, String, QQueryOperations>
      drainageColorProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'drainageColor');
    });
  }

  QueryBuilder<MeasurementDB, String, QQueryOperations>
      drainageDepthProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'drainageDepth');
    });
  }

  QueryBuilder<MeasurementDB, bool, QQueryOperations> drainageEndCapProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'drainageEndCap');
    });
  }

  QueryBuilder<MeasurementDB, String, QQueryOperations>
      drainageWidthProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'drainageWidth');
    });
  }

  QueryBuilder<MeasurementDB, ElevatorOptions, QQueryOperations>
      elevatorProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'elevator');
    });
  }

  QueryBuilder<MeasurementDB, String, QQueryOperations> entranceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'entrance');
    });
  }

  QueryBuilder<MeasurementDB, String, QQueryOperations>
      estimatedAssemblyTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'estimatedAssemblyTime');
    });
  }

  QueryBuilder<MeasurementDB, ExpanderOptionDB, QQueryOperations>
      expanderOptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'expanderOption');
    });
  }

  QueryBuilder<MeasurementDB, bool, QQueryOperations>
      extensionSheathingProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'extensionSheathing');
    });
  }

  QueryBuilder<MeasurementDB, FlatStatus, QQueryOperations>
      flatStatusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'flatStatus');
    });
  }

  QueryBuilder<MeasurementDB, String, QQueryOperations> floorProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'floor');
    });
  }

  QueryBuilder<MeasurementDB, String, QQueryOperations> furnitureProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'furniture');
    });
  }

  QueryBuilder<MeasurementDB, bool, QQueryOperations> garbageRemovalProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'garbageRemoval');
    });
  }

  QueryBuilder<MeasurementDB, String, QQueryOperations> glassUnitProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'glassUnit');
    });
  }

  QueryBuilder<MeasurementDB, bool, QQueryOperations>
      gridDisassemblyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'gridDisassembly');
    });
  }

  QueryBuilder<MeasurementDB, String, QQueryOperations>
      housingCoopNumberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'housingCoopNumber');
    });
  }

  QueryBuilder<MeasurementDB, String, QQueryOperations>
      howDiscoveredProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'howDiscovered');
    });
  }

  QueryBuilder<MeasurementDB, String, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<MeasurementDB, bool, QQueryOperations> insulationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'insulation');
    });
  }

  QueryBuilder<MeasurementDB, String, QQueryOperations>
      laminationExternalProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'laminationExternal');
    });
  }

  QueryBuilder<MeasurementDB, String, QQueryOperations>
      laminationInternalProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'laminationInternal');
    });
  }

  QueryBuilder<MeasurementDB, String, QQueryOperations> measurerProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'measurer');
    });
  }

  QueryBuilder<MeasurementDB, PanelThickness, QQueryOperations>
      panelThicknessProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'panelThickness');
    });
  }

  QueryBuilder<MeasurementDB, PanelType, QQueryOperations> panelTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'panelType');
    });
  }

  QueryBuilder<MeasurementDB, bool, QQueryOperations>
      parapetReinforcementProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'parapetReinforcement');
    });
  }

  QueryBuilder<MeasurementDB, String, QQueryOperations>
      phoneNumberAdditionalProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'phoneNumberAdditional');
    });
  }

  QueryBuilder<MeasurementDB, String, QQueryOperations>
      phoneNumberMainProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'phoneNumberMain');
    });
  }

  QueryBuilder<MeasurementDB, String, QQueryOperations> prepaymentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'prepayment');
    });
  }

  QueryBuilder<MeasurementDB, ProfileSystem, QQueryOperations>
      profileSystemProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'profileSystem');
    });
  }

  QueryBuilder<MeasurementDB, QuarterPosition, QQueryOperations>
      quarterPositionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'quarterPosition');
    });
  }

  QueryBuilder<MeasurementDB, String, QQueryOperations> quarterSizeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'quarterSize');
    });
  }

  QueryBuilder<MeasurementDB, String, QQueryOperations>
      residentialComplexProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'residentialComplex');
    });
  }

  QueryBuilder<MeasurementDB, bool, QQueryOperations>
      roofDisassemblyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'roofDisassembly');
    });
  }

  QueryBuilder<MeasurementDB, RubberColor, QQueryOperations>
      rubberColorProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rubberColor');
    });
  }

  QueryBuilder<MeasurementDB, SchemeDB?, QQueryOperations> schemeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'scheme');
    });
  }

  QueryBuilder<MeasurementDB, bool, QQueryOperations>
      screedDisassemblyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'screedDisassembly');
    });
  }

  QueryBuilder<MeasurementDB, bool, QQueryOperations> sealingProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sealing');
    });
  }

  QueryBuilder<MeasurementDB, bool, QQueryOperations> slabExtensionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'slabExtension');
    });
  }

  QueryBuilder<MeasurementDB, String, QQueryOperations> slopeDepthProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'slopeDepth');
    });
  }

  QueryBuilder<MeasurementDB, String, QQueryOperations> slopeLengthProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'slopeLength');
    });
  }

  QueryBuilder<MeasurementDB, String, QQueryOperations>
      slopeQuantityProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'slopeQuantity');
    });
  }

  QueryBuilder<MeasurementDB, StandProfile, QQueryOperations>
      standProfileProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'standProfile');
    });
  }

  QueryBuilder<MeasurementDB, bool, QQueryOperations>
      staticCalculationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'staticCalculation');
    });
  }

  QueryBuilder<MeasurementDB, String, QQueryOperations> streetProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'street');
    });
  }

  QueryBuilder<MeasurementDB, bool, QQueryOperations> unloadingProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'unloading');
    });
  }

  QueryBuilder<MeasurementDB, bool, QQueryOperations> vacuumCleanerProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'vacuumCleaner');
    });
  }

  QueryBuilder<MeasurementDB, bool, QQueryOperations>
      windowsillAssemblyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'windowsillAssembly');
    });
  }

  QueryBuilder<MeasurementDB, String, QQueryOperations>
      windowsillColorProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'windowsillColor');
    });
  }

  QueryBuilder<MeasurementDB, WindowsillConnector, QQueryOperations>
      windowsillConnectorProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'windowsillConnector');
    });
  }

  QueryBuilder<MeasurementDB, WindowsillDepth, QQueryOperations>
      windowsillDepthProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'windowsillDepth');
    });
  }

  QueryBuilder<MeasurementDB, WindowsillExtension, QQueryOperations>
      windowsillExtensionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'windowsillExtension');
    });
  }

  QueryBuilder<MeasurementDB, String, QQueryOperations>
      windowsillSizeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'windowsillSize');
    });
  }

  QueryBuilder<MeasurementDB, WindowsillType, QQueryOperations>
      windowsillTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'windowsillType');
    });
  }
}
