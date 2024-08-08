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
    r'city': PropertySchema(
      id: 5,
      name: r'city',
      type: IsarType.string,
    ),
    r'clientName': PropertySchema(
      id: 6,
      name: r'clientName',
      type: IsarType.string,
    ),
    r'comment': PropertySchema(
      id: 7,
      name: r'comment',
      type: IsarType.string,
    ),
    r'cost': PropertySchema(
      id: 8,
      name: r'cost',
      type: IsarType.string,
    ),
    r'date': PropertySchema(
      id: 9,
      name: r'date',
      type: IsarType.dateTime,
    ),
    r'delivery': PropertySchema(
      id: 10,
      name: r'delivery',
      type: IsarType.bool,
    ),
    r'deliveryPrice': PropertySchema(
      id: 11,
      name: r'deliveryPrice',
      type: IsarType.string,
    ),
    r'disassembly': PropertySchema(
      id: 12,
      name: r'disassembly',
      type: IsarType.bool,
    ),
    r'district': PropertySchema(
      id: 13,
      name: r'district',
      type: IsarType.string,
    ),
    r'doorphone': PropertySchema(
      id: 14,
      name: r'doorphone',
      type: IsarType.string,
    ),
    r'elevator': PropertySchema(
      id: 15,
      name: r'elevator',
      type: IsarType.string,
      enumMap: _MeasurementDBelevatorEnumValueMap,
    ),
    r'entrance': PropertySchema(
      id: 16,
      name: r'entrance',
      type: IsarType.string,
    ),
    r'estimatedAssemblyTime': PropertySchema(
      id: 17,
      name: r'estimatedAssemblyTime',
      type: IsarType.string,
    ),
    r'extensionSheathing': PropertySchema(
      id: 18,
      name: r'extensionSheathing',
      type: IsarType.bool,
    ),
    r'extensionSheathingPrice': PropertySchema(
      id: 19,
      name: r'extensionSheathingPrice',
      type: IsarType.string,
    ),
    r'flatStatus': PropertySchema(
      id: 20,
      name: r'flatStatus',
      type: IsarType.string,
      enumMap: _MeasurementDBflatStatusEnumValueMap,
    ),
    r'floor': PropertySchema(
      id: 21,
      name: r'floor',
      type: IsarType.string,
    ),
    r'flooring': PropertySchema(
      id: 22,
      name: r'flooring',
      type: IsarType.bool,
    ),
    r'flooringCovering': PropertySchema(
      id: 23,
      name: r'flooringCovering',
      type: IsarType.string,
    ),
    r'flooringPrice': PropertySchema(
      id: 24,
      name: r'flooringPrice',
      type: IsarType.string,
    ),
    r'garbageRemoval': PropertySchema(
      id: 25,
      name: r'garbageRemoval',
      type: IsarType.bool,
    ),
    r'garbageRemovalPrice': PropertySchema(
      id: 26,
      name: r'garbageRemovalPrice',
      type: IsarType.string,
    ),
    r'gridDisassembly': PropertySchema(
      id: 27,
      name: r'gridDisassembly',
      type: IsarType.bool,
    ),
    r'gridDisassemblyPrice': PropertySchema(
      id: 28,
      name: r'gridDisassemblyPrice',
      type: IsarType.string,
    ),
    r'housingCoopNumber': PropertySchema(
      id: 29,
      name: r'housingCoopNumber',
      type: IsarType.string,
    ),
    r'howDiscovered': PropertySchema(
      id: 30,
      name: r'howDiscovered',
      type: IsarType.string,
    ),
    r'id': PropertySchema(
      id: 31,
      name: r'id',
      type: IsarType.string,
    ),
    r'insulation': PropertySchema(
      id: 32,
      name: r'insulation',
      type: IsarType.bool,
    ),
    r'insulationPrice': PropertySchema(
      id: 33,
      name: r'insulationPrice',
      type: IsarType.string,
    ),
    r'leadId': PropertySchema(
      id: 34,
      name: r'leadId',
      type: IsarType.string,
    ),
    r'measurer': PropertySchema(
      id: 35,
      name: r'measurer',
      type: IsarType.string,
    ),
    r'parapetReinforcement': PropertySchema(
      id: 36,
      name: r'parapetReinforcement',
      type: IsarType.bool,
    ),
    r'parapetReinforcementPrice': PropertySchema(
      id: 37,
      name: r'parapetReinforcementPrice',
      type: IsarType.string,
    ),
    r'pdfFile': PropertySchema(
      id: 38,
      name: r'pdfFile',
      type: IsarType.string,
    ),
    r'phoneNumberAdditional': PropertySchema(
      id: 39,
      name: r'phoneNumberAdditional',
      type: IsarType.string,
    ),
    r'phoneNumberMain': PropertySchema(
      id: 40,
      name: r'phoneNumberMain',
      type: IsarType.string,
    ),
    r'positions': PropertySchema(
      id: 41,
      name: r'positions',
      type: IsarType.objectList,
      target: r'PositionDB',
    ),
    r'prepayment': PropertySchema(
      id: 42,
      name: r'prepayment',
      type: IsarType.string,
    ),
    r'remoteId': PropertySchema(
      id: 43,
      name: r'remoteId',
      type: IsarType.long,
    ),
    r'residentialComplex': PropertySchema(
      id: 44,
      name: r'residentialComplex',
      type: IsarType.string,
    ),
    r'roofDisassembly': PropertySchema(
      id: 45,
      name: r'roofDisassembly',
      type: IsarType.bool,
    ),
    r'roofDisassemblyPrice': PropertySchema(
      id: 46,
      name: r'roofDisassemblyPrice',
      type: IsarType.string,
    ),
    r'screedDisassembly': PropertySchema(
      id: 47,
      name: r'screedDisassembly',
      type: IsarType.bool,
    ),
    r'screedDisassemblyPrice': PropertySchema(
      id: 48,
      name: r'screedDisassemblyPrice',
      type: IsarType.string,
    ),
    r'sealing': PropertySchema(
      id: 49,
      name: r'sealing',
      type: IsarType.bool,
    ),
    r'sealingPrice': PropertySchema(
      id: 50,
      name: r'sealingPrice',
      type: IsarType.string,
    ),
    r'slabExtension': PropertySchema(
      id: 51,
      name: r'slabExtension',
      type: IsarType.bool,
    ),
    r'slabExtensionPrice': PropertySchema(
      id: 52,
      name: r'slabExtensionPrice',
      type: IsarType.string,
    ),
    r'street': PropertySchema(
      id: 53,
      name: r'street',
      type: IsarType.string,
    ),
    r'unloading': PropertySchema(
      id: 54,
      name: r'unloading',
      type: IsarType.bool,
    ),
    r'unloadingPrice': PropertySchema(
      id: 55,
      name: r'unloadingPrice',
      type: IsarType.string,
    ),
    r'vacuumCleaner': PropertySchema(
      id: 56,
      name: r'vacuumCleaner',
      type: IsarType.bool,
    ),
    r'windowsillExtension': PropertySchema(
      id: 57,
      name: r'windowsillExtension',
      type: IsarType.string,
      enumMap: _MeasurementDBwindowsillExtensionEnumValueMap,
    ),
    r'windowsillExtensionPrice': PropertySchema(
      id: 58,
      name: r'windowsillExtensionPrice',
      type: IsarType.string,
    )
  },
  estimateSize: _measurementDBEstimateSize,
  serialize: _measurementDBSerialize,
  deserialize: _measurementDBDeserialize,
  deserializeProp: _measurementDBDeserializeProp,
  idName: r'localId',
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
    r'PositionDB': PositionDBSchema,
    r'SchemeDB': SchemeDBSchema,
    r'LineDB': LineDBSchema,
    r'SizeSegmentDB': SizeSegmentDBSchema,
    r'PolygonDB': PolygonDBSchema,
    r'OpeningTypeRecordDB': OpeningTypeRecordDBSchema,
    r'FillingTypeRecordDB': FillingTypeRecordDBSchema,
    r'ArchDB': ArchDBSchema,
    r'ExpanderOptionDB': ExpanderOptionDBSchema
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
  bytesCount += 3 + object.city.length * 3;
  bytesCount += 3 + object.clientName.length * 3;
  bytesCount += 3 + object.comment.length * 3;
  bytesCount += 3 + object.cost.length * 3;
  bytesCount += 3 + object.deliveryPrice.length * 3;
  bytesCount += 3 + object.district.length * 3;
  bytesCount += 3 + object.doorphone.length * 3;
  bytesCount += 3 + object.elevator.name.length * 3;
  bytesCount += 3 + object.entrance.length * 3;
  bytesCount += 3 + object.estimatedAssemblyTime.length * 3;
  bytesCount += 3 + object.extensionSheathingPrice.length * 3;
  bytesCount += 3 + object.flatStatus.name.length * 3;
  bytesCount += 3 + object.floor.length * 3;
  bytesCount += 3 + object.flooringCovering.length * 3;
  bytesCount += 3 + object.flooringPrice.length * 3;
  bytesCount += 3 + object.garbageRemovalPrice.length * 3;
  bytesCount += 3 + object.gridDisassemblyPrice.length * 3;
  bytesCount += 3 + object.housingCoopNumber.length * 3;
  bytesCount += 3 + object.howDiscovered.length * 3;
  bytesCount += 3 + object.id.length * 3;
  bytesCount += 3 + object.insulationPrice.length * 3;
  bytesCount += 3 + object.leadId.length * 3;
  bytesCount += 3 + object.measurer.length * 3;
  bytesCount += 3 + object.parapetReinforcementPrice.length * 3;
  {
    final value = object.pdfFile;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.phoneNumberAdditional.length * 3;
  bytesCount += 3 + object.phoneNumberMain.length * 3;
  bytesCount += 3 + object.positions.length * 3;
  {
    final offsets = allOffsets[PositionDB]!;
    for (var i = 0; i < object.positions.length; i++) {
      final value = object.positions[i];
      bytesCount += PositionDBSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  bytesCount += 3 + object.prepayment.length * 3;
  bytesCount += 3 + object.residentialComplex.length * 3;
  bytesCount += 3 + object.roofDisassemblyPrice.length * 3;
  bytesCount += 3 + object.screedDisassemblyPrice.length * 3;
  bytesCount += 3 + object.sealingPrice.length * 3;
  bytesCount += 3 + object.slabExtensionPrice.length * 3;
  bytesCount += 3 + object.street.length * 3;
  bytesCount += 3 + object.unloadingPrice.length * 3;
  bytesCount += 3 + object.windowsillExtension.name.length * 3;
  bytesCount += 3 + object.windowsillExtensionPrice.length * 3;
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
  writer.writeString(offsets[5], object.city);
  writer.writeString(offsets[6], object.clientName);
  writer.writeString(offsets[7], object.comment);
  writer.writeString(offsets[8], object.cost);
  writer.writeDateTime(offsets[9], object.date);
  writer.writeBool(offsets[10], object.delivery);
  writer.writeString(offsets[11], object.deliveryPrice);
  writer.writeBool(offsets[12], object.disassembly);
  writer.writeString(offsets[13], object.district);
  writer.writeString(offsets[14], object.doorphone);
  writer.writeString(offsets[15], object.elevator.name);
  writer.writeString(offsets[16], object.entrance);
  writer.writeString(offsets[17], object.estimatedAssemblyTime);
  writer.writeBool(offsets[18], object.extensionSheathing);
  writer.writeString(offsets[19], object.extensionSheathingPrice);
  writer.writeString(offsets[20], object.flatStatus.name);
  writer.writeString(offsets[21], object.floor);
  writer.writeBool(offsets[22], object.flooring);
  writer.writeString(offsets[23], object.flooringCovering);
  writer.writeString(offsets[24], object.flooringPrice);
  writer.writeBool(offsets[25], object.garbageRemoval);
  writer.writeString(offsets[26], object.garbageRemovalPrice);
  writer.writeBool(offsets[27], object.gridDisassembly);
  writer.writeString(offsets[28], object.gridDisassemblyPrice);
  writer.writeString(offsets[29], object.housingCoopNumber);
  writer.writeString(offsets[30], object.howDiscovered);
  writer.writeString(offsets[31], object.id);
  writer.writeBool(offsets[32], object.insulation);
  writer.writeString(offsets[33], object.insulationPrice);
  writer.writeString(offsets[34], object.leadId);
  writer.writeString(offsets[35], object.measurer);
  writer.writeBool(offsets[36], object.parapetReinforcement);
  writer.writeString(offsets[37], object.parapetReinforcementPrice);
  writer.writeString(offsets[38], object.pdfFile);
  writer.writeString(offsets[39], object.phoneNumberAdditional);
  writer.writeString(offsets[40], object.phoneNumberMain);
  writer.writeObjectList<PositionDB>(
    offsets[41],
    allOffsets,
    PositionDBSchema.serialize,
    object.positions,
  );
  writer.writeString(offsets[42], object.prepayment);
  writer.writeLong(offsets[43], object.remoteId);
  writer.writeString(offsets[44], object.residentialComplex);
  writer.writeBool(offsets[45], object.roofDisassembly);
  writer.writeString(offsets[46], object.roofDisassemblyPrice);
  writer.writeBool(offsets[47], object.screedDisassembly);
  writer.writeString(offsets[48], object.screedDisassemblyPrice);
  writer.writeBool(offsets[49], object.sealing);
  writer.writeString(offsets[50], object.sealingPrice);
  writer.writeBool(offsets[51], object.slabExtension);
  writer.writeString(offsets[52], object.slabExtensionPrice);
  writer.writeString(offsets[53], object.street);
  writer.writeBool(offsets[54], object.unloading);
  writer.writeString(offsets[55], object.unloadingPrice);
  writer.writeBool(offsets[56], object.vacuumCleaner);
  writer.writeString(offsets[57], object.windowsillExtension.name);
  writer.writeString(offsets[58], object.windowsillExtensionPrice);
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
  object.city = reader.readString(offsets[5]);
  object.clientName = reader.readString(offsets[6]);
  object.comment = reader.readString(offsets[7]);
  object.cost = reader.readString(offsets[8]);
  object.date = reader.readDateTime(offsets[9]);
  object.delivery = reader.readBool(offsets[10]);
  object.deliveryPrice = reader.readString(offsets[11]);
  object.disassembly = reader.readBool(offsets[12]);
  object.district = reader.readString(offsets[13]);
  object.doorphone = reader.readString(offsets[14]);
  object.elevator = _MeasurementDBelevatorValueEnumMap[
          reader.readStringOrNull(offsets[15])] ??
      ElevatorOptions.none;
  object.entrance = reader.readString(offsets[16]);
  object.estimatedAssemblyTime = reader.readString(offsets[17]);
  object.extensionSheathing = reader.readBool(offsets[18]);
  object.extensionSheathingPrice = reader.readString(offsets[19]);
  object.flatStatus = _MeasurementDBflatStatusValueEnumMap[
          reader.readStringOrNull(offsets[20])] ??
      FlatStatus.none;
  object.floor = reader.readString(offsets[21]);
  object.flooring = reader.readBool(offsets[22]);
  object.flooringCovering = reader.readString(offsets[23]);
  object.flooringPrice = reader.readString(offsets[24]);
  object.garbageRemoval = reader.readBool(offsets[25]);
  object.garbageRemovalPrice = reader.readString(offsets[26]);
  object.gridDisassembly = reader.readBool(offsets[27]);
  object.gridDisassemblyPrice = reader.readString(offsets[28]);
  object.housingCoopNumber = reader.readString(offsets[29]);
  object.howDiscovered = reader.readString(offsets[30]);
  object.id = reader.readString(offsets[31]);
  object.insulation = reader.readBool(offsets[32]);
  object.insulationPrice = reader.readString(offsets[33]);
  object.leadId = reader.readString(offsets[34]);
  object.localId = id;
  object.measurer = reader.readString(offsets[35]);
  object.parapetReinforcement = reader.readBool(offsets[36]);
  object.parapetReinforcementPrice = reader.readString(offsets[37]);
  object.pdfFile = reader.readStringOrNull(offsets[38]);
  object.phoneNumberAdditional = reader.readString(offsets[39]);
  object.phoneNumberMain = reader.readString(offsets[40]);
  object.positions = reader.readObjectList<PositionDB>(
        offsets[41],
        PositionDBSchema.deserialize,
        allOffsets,
        PositionDB(),
      ) ??
      [];
  object.prepayment = reader.readString(offsets[42]);
  object.remoteId = reader.readLongOrNull(offsets[43]);
  object.residentialComplex = reader.readString(offsets[44]);
  object.roofDisassembly = reader.readBool(offsets[45]);
  object.roofDisassemblyPrice = reader.readString(offsets[46]);
  object.screedDisassembly = reader.readBool(offsets[47]);
  object.screedDisassemblyPrice = reader.readString(offsets[48]);
  object.sealing = reader.readBool(offsets[49]);
  object.sealingPrice = reader.readString(offsets[50]);
  object.slabExtension = reader.readBool(offsets[51]);
  object.slabExtensionPrice = reader.readString(offsets[52]);
  object.street = reader.readString(offsets[53]);
  object.unloading = reader.readBool(offsets[54]);
  object.unloadingPrice = reader.readString(offsets[55]);
  object.vacuumCleaner = reader.readBool(offsets[56]);
  object.windowsillExtension = _MeasurementDBwindowsillExtensionValueEnumMap[
          reader.readStringOrNull(offsets[57])] ??
      WindowsillExtension.none;
  object.windowsillExtensionPrice = reader.readString(offsets[58]);
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
      return (reader.readDateTime(offset)) as P;
    case 10:
      return (reader.readBool(offset)) as P;
    case 11:
      return (reader.readString(offset)) as P;
    case 12:
      return (reader.readBool(offset)) as P;
    case 13:
      return (reader.readString(offset)) as P;
    case 14:
      return (reader.readString(offset)) as P;
    case 15:
      return (_MeasurementDBelevatorValueEnumMap[
              reader.readStringOrNull(offset)] ??
          ElevatorOptions.none) as P;
    case 16:
      return (reader.readString(offset)) as P;
    case 17:
      return (reader.readString(offset)) as P;
    case 18:
      return (reader.readBool(offset)) as P;
    case 19:
      return (reader.readString(offset)) as P;
    case 20:
      return (_MeasurementDBflatStatusValueEnumMap[
              reader.readStringOrNull(offset)] ??
          FlatStatus.none) as P;
    case 21:
      return (reader.readString(offset)) as P;
    case 22:
      return (reader.readBool(offset)) as P;
    case 23:
      return (reader.readString(offset)) as P;
    case 24:
      return (reader.readString(offset)) as P;
    case 25:
      return (reader.readBool(offset)) as P;
    case 26:
      return (reader.readString(offset)) as P;
    case 27:
      return (reader.readBool(offset)) as P;
    case 28:
      return (reader.readString(offset)) as P;
    case 29:
      return (reader.readString(offset)) as P;
    case 30:
      return (reader.readString(offset)) as P;
    case 31:
      return (reader.readString(offset)) as P;
    case 32:
      return (reader.readBool(offset)) as P;
    case 33:
      return (reader.readString(offset)) as P;
    case 34:
      return (reader.readString(offset)) as P;
    case 35:
      return (reader.readString(offset)) as P;
    case 36:
      return (reader.readBool(offset)) as P;
    case 37:
      return (reader.readString(offset)) as P;
    case 38:
      return (reader.readStringOrNull(offset)) as P;
    case 39:
      return (reader.readString(offset)) as P;
    case 40:
      return (reader.readString(offset)) as P;
    case 41:
      return (reader.readObjectList<PositionDB>(
            offset,
            PositionDBSchema.deserialize,
            allOffsets,
            PositionDB(),
          ) ??
          []) as P;
    case 42:
      return (reader.readString(offset)) as P;
    case 43:
      return (reader.readLongOrNull(offset)) as P;
    case 44:
      return (reader.readString(offset)) as P;
    case 45:
      return (reader.readBool(offset)) as P;
    case 46:
      return (reader.readString(offset)) as P;
    case 47:
      return (reader.readBool(offset)) as P;
    case 48:
      return (reader.readString(offset)) as P;
    case 49:
      return (reader.readBool(offset)) as P;
    case 50:
      return (reader.readString(offset)) as P;
    case 51:
      return (reader.readBool(offset)) as P;
    case 52:
      return (reader.readString(offset)) as P;
    case 53:
      return (reader.readString(offset)) as P;
    case 54:
      return (reader.readBool(offset)) as P;
    case 55:
      return (reader.readString(offset)) as P;
    case 56:
      return (reader.readBool(offset)) as P;
    case 57:
      return (_MeasurementDBwindowsillExtensionValueEnumMap[
              reader.readStringOrNull(offset)] ??
          WindowsillExtension.none) as P;
    case 58:
      return (reader.readString(offset)) as P;
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

Id _measurementDBGetId(MeasurementDB object) {
  return object.localId ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _measurementDBGetLinks(MeasurementDB object) {
  return [];
}

void _measurementDBAttach(
    IsarCollection<dynamic> col, Id id, MeasurementDB object) {
  object.localId = id;
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
  QueryBuilder<MeasurementDB, MeasurementDB, QAfterWhere> anyLocalId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension MeasurementDBQueryWhere
    on QueryBuilder<MeasurementDB, MeasurementDB, QWhereClause> {
  QueryBuilder<MeasurementDB, MeasurementDB, QAfterWhereClause> localIdEqualTo(
      Id localId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: localId,
        upper: localId,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterWhereClause>
      localIdNotEqualTo(Id localId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: localId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: localId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: localId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: localId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterWhereClause>
      localIdGreaterThan(Id localId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: localId, includeLower: include),
      );
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterWhereClause> localIdLessThan(
      Id localId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: localId, includeUpper: include),
      );
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterWhereClause> localIdBetween(
    Id lowerLocalId,
    Id upperLocalId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerLocalId,
        includeLower: includeLower,
        upper: upperLocalId,
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
      deliveryPriceEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'deliveryPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      deliveryPriceGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'deliveryPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      deliveryPriceLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'deliveryPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      deliveryPriceBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'deliveryPrice',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      deliveryPriceStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'deliveryPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      deliveryPriceEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'deliveryPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      deliveryPriceContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'deliveryPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      deliveryPriceMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'deliveryPrice',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      deliveryPriceIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'deliveryPrice',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      deliveryPriceIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'deliveryPrice',
        value: '',
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
      extensionSheathingPriceEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'extensionSheathingPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      extensionSheathingPriceGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'extensionSheathingPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      extensionSheathingPriceLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'extensionSheathingPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      extensionSheathingPriceBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'extensionSheathingPrice',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      extensionSheathingPriceStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'extensionSheathingPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      extensionSheathingPriceEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'extensionSheathingPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      extensionSheathingPriceContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'extensionSheathingPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      extensionSheathingPriceMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'extensionSheathingPrice',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      extensionSheathingPriceIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'extensionSheathingPrice',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      extensionSheathingPriceIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'extensionSheathingPrice',
        value: '',
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
      flooringEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'flooring',
        value: value,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      flooringCoveringEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'flooringCovering',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      flooringCoveringGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'flooringCovering',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      flooringCoveringLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'flooringCovering',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      flooringCoveringBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'flooringCovering',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      flooringCoveringStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'flooringCovering',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      flooringCoveringEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'flooringCovering',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      flooringCoveringContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'flooringCovering',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      flooringCoveringMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'flooringCovering',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      flooringCoveringIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'flooringCovering',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      flooringCoveringIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'flooringCovering',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      flooringPriceEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'flooringPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      flooringPriceGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'flooringPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      flooringPriceLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'flooringPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      flooringPriceBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'flooringPrice',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      flooringPriceStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'flooringPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      flooringPriceEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'flooringPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      flooringPriceContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'flooringPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      flooringPriceMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'flooringPrice',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      flooringPriceIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'flooringPrice',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      flooringPriceIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'flooringPrice',
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
      garbageRemovalPriceEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'garbageRemovalPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      garbageRemovalPriceGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'garbageRemovalPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      garbageRemovalPriceLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'garbageRemovalPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      garbageRemovalPriceBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'garbageRemovalPrice',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      garbageRemovalPriceStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'garbageRemovalPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      garbageRemovalPriceEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'garbageRemovalPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      garbageRemovalPriceContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'garbageRemovalPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      garbageRemovalPriceMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'garbageRemovalPrice',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      garbageRemovalPriceIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'garbageRemovalPrice',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      garbageRemovalPriceIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'garbageRemovalPrice',
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
      gridDisassemblyPriceEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'gridDisassemblyPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      gridDisassemblyPriceGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'gridDisassemblyPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      gridDisassemblyPriceLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'gridDisassemblyPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      gridDisassemblyPriceBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'gridDisassemblyPrice',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      gridDisassemblyPriceStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'gridDisassemblyPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      gridDisassemblyPriceEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'gridDisassemblyPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      gridDisassemblyPriceContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'gridDisassemblyPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      gridDisassemblyPriceMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'gridDisassemblyPrice',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      gridDisassemblyPriceIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'gridDisassemblyPrice',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      gridDisassemblyPriceIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'gridDisassemblyPrice',
        value: '',
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
      insulationEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'insulation',
        value: value,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      insulationPriceEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'insulationPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      insulationPriceGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'insulationPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      insulationPriceLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'insulationPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      insulationPriceBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'insulationPrice',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      insulationPriceStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'insulationPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      insulationPriceEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'insulationPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      insulationPriceContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'insulationPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      insulationPriceMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'insulationPrice',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      insulationPriceIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'insulationPrice',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      insulationPriceIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'insulationPrice',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      leadIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'leadId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      leadIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'leadId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      leadIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'leadId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      leadIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'leadId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      leadIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'leadId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      leadIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'leadId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      leadIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'leadId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      leadIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'leadId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      leadIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'leadId',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      leadIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'leadId',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      localIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'localId',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      localIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'localId',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      localIdEqualTo(Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'localId',
        value: value,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      localIdGreaterThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'localId',
        value: value,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      localIdLessThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'localId',
        value: value,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      localIdBetween(
    Id? lower,
    Id? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'localId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
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
      parapetReinforcementEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'parapetReinforcement',
        value: value,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      parapetReinforcementPriceEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'parapetReinforcementPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      parapetReinforcementPriceGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'parapetReinforcementPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      parapetReinforcementPriceLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'parapetReinforcementPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      parapetReinforcementPriceBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'parapetReinforcementPrice',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      parapetReinforcementPriceStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'parapetReinforcementPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      parapetReinforcementPriceEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'parapetReinforcementPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      parapetReinforcementPriceContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'parapetReinforcementPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      parapetReinforcementPriceMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'parapetReinforcementPrice',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      parapetReinforcementPriceIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'parapetReinforcementPrice',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      parapetReinforcementPriceIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'parapetReinforcementPrice',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      pdfFileIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'pdfFile',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      pdfFileIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'pdfFile',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      pdfFileEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pdfFile',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      pdfFileGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'pdfFile',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      pdfFileLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'pdfFile',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      pdfFileBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'pdfFile',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      pdfFileStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'pdfFile',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      pdfFileEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'pdfFile',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      pdfFileContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'pdfFile',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      pdfFileMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'pdfFile',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      pdfFileIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pdfFile',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      pdfFileIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'pdfFile',
        value: '',
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
      positionsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'positions',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      positionsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'positions',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      positionsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'positions',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      positionsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'positions',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      positionsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'positions',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      positionsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'positions',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
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
      remoteIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'remoteId',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      remoteIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'remoteId',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      remoteIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'remoteId',
        value: value,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      remoteIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'remoteId',
        value: value,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      remoteIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'remoteId',
        value: value,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      remoteIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'remoteId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
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
      roofDisassemblyPriceEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'roofDisassemblyPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      roofDisassemblyPriceGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'roofDisassemblyPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      roofDisassemblyPriceLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'roofDisassemblyPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      roofDisassemblyPriceBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'roofDisassemblyPrice',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      roofDisassemblyPriceStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'roofDisassemblyPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      roofDisassemblyPriceEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'roofDisassemblyPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      roofDisassemblyPriceContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'roofDisassemblyPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      roofDisassemblyPriceMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'roofDisassemblyPrice',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      roofDisassemblyPriceIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'roofDisassemblyPrice',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      roofDisassemblyPriceIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'roofDisassemblyPrice',
        value: '',
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
      screedDisassemblyPriceEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'screedDisassemblyPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      screedDisassemblyPriceGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'screedDisassemblyPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      screedDisassemblyPriceLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'screedDisassemblyPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      screedDisassemblyPriceBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'screedDisassemblyPrice',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      screedDisassemblyPriceStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'screedDisassemblyPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      screedDisassemblyPriceEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'screedDisassemblyPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      screedDisassemblyPriceContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'screedDisassemblyPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      screedDisassemblyPriceMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'screedDisassemblyPrice',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      screedDisassemblyPriceIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'screedDisassemblyPrice',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      screedDisassemblyPriceIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'screedDisassemblyPrice',
        value: '',
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
      sealingPriceEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sealingPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      sealingPriceGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'sealingPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      sealingPriceLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'sealingPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      sealingPriceBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sealingPrice',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      sealingPriceStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'sealingPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      sealingPriceEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'sealingPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      sealingPriceContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'sealingPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      sealingPriceMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'sealingPrice',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      sealingPriceIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sealingPrice',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      sealingPriceIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'sealingPrice',
        value: '',
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
      slabExtensionPriceEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'slabExtensionPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      slabExtensionPriceGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'slabExtensionPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      slabExtensionPriceLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'slabExtensionPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      slabExtensionPriceBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'slabExtensionPrice',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      slabExtensionPriceStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'slabExtensionPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      slabExtensionPriceEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'slabExtensionPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      slabExtensionPriceContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'slabExtensionPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      slabExtensionPriceMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'slabExtensionPrice',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      slabExtensionPriceIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'slabExtensionPrice',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      slabExtensionPriceIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'slabExtensionPrice',
        value: '',
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
      unloadingPriceEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'unloadingPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      unloadingPriceGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'unloadingPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      unloadingPriceLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'unloadingPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      unloadingPriceBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'unloadingPrice',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      unloadingPriceStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'unloadingPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      unloadingPriceEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'unloadingPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      unloadingPriceContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'unloadingPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      unloadingPriceMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'unloadingPrice',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      unloadingPriceIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'unloadingPrice',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      unloadingPriceIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'unloadingPrice',
        value: '',
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
      windowsillExtensionPriceEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'windowsillExtensionPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      windowsillExtensionPriceGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'windowsillExtensionPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      windowsillExtensionPriceLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'windowsillExtensionPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      windowsillExtensionPriceBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'windowsillExtensionPrice',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      windowsillExtensionPriceStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'windowsillExtensionPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      windowsillExtensionPriceEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'windowsillExtensionPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      windowsillExtensionPriceContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'windowsillExtensionPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      windowsillExtensionPriceMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'windowsillExtensionPrice',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      windowsillExtensionPriceIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'windowsillExtensionPrice',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      windowsillExtensionPriceIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'windowsillExtensionPrice',
        value: '',
      ));
    });
  }
}

extension MeasurementDBQueryObject
    on QueryBuilder<MeasurementDB, MeasurementDB, QFilterCondition> {
  QueryBuilder<MeasurementDB, MeasurementDB, QAfterFilterCondition>
      positionsElement(FilterQuery<PositionDB> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'positions');
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByDeliveryPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deliveryPrice', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByDeliveryPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deliveryPrice', Sort.desc);
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByExtensionSheathingPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'extensionSheathingPrice', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByExtensionSheathingPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'extensionSheathingPrice', Sort.desc);
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> sortByFlooring() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'flooring', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByFlooringDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'flooring', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByFlooringCovering() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'flooringCovering', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByFlooringCoveringDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'flooringCovering', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByFlooringPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'flooringPrice', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByFlooringPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'flooringPrice', Sort.desc);
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByGarbageRemovalPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'garbageRemovalPrice', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByGarbageRemovalPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'garbageRemovalPrice', Sort.desc);
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
      sortByGridDisassemblyPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gridDisassemblyPrice', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByGridDisassemblyPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gridDisassemblyPrice', Sort.desc);
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
      sortByInsulationPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'insulationPrice', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByInsulationPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'insulationPrice', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> sortByLeadId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leadId', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> sortByLeadIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leadId', Sort.desc);
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
      sortByParapetReinforcementPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'parapetReinforcementPrice', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByParapetReinforcementPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'parapetReinforcementPrice', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> sortByPdfFile() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pdfFile', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> sortByPdfFileDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pdfFile', Sort.desc);
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> sortByRemoteId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'remoteId', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByRemoteIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'remoteId', Sort.desc);
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByRoofDisassemblyPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'roofDisassemblyPrice', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByRoofDisassemblyPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'roofDisassemblyPrice', Sort.desc);
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByScreedDisassemblyPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'screedDisassemblyPrice', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByScreedDisassemblyPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'screedDisassemblyPrice', Sort.desc);
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
      sortBySealingPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sealingPrice', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortBySealingPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sealingPrice', Sort.desc);
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortBySlabExtensionPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'slabExtensionPrice', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortBySlabExtensionPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'slabExtensionPrice', Sort.desc);
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
      sortByUnloadingPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unloadingPrice', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByUnloadingPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unloadingPrice', Sort.desc);
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
      sortByWindowsillExtensionPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'windowsillExtensionPrice', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      sortByWindowsillExtensionPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'windowsillExtensionPrice', Sort.desc);
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByDeliveryPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deliveryPrice', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByDeliveryPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deliveryPrice', Sort.desc);
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByExtensionSheathingPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'extensionSheathingPrice', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByExtensionSheathingPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'extensionSheathingPrice', Sort.desc);
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> thenByFlooring() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'flooring', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByFlooringDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'flooring', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByFlooringCovering() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'flooringCovering', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByFlooringCoveringDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'flooringCovering', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByFlooringPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'flooringPrice', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByFlooringPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'flooringPrice', Sort.desc);
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByGarbageRemovalPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'garbageRemovalPrice', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByGarbageRemovalPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'garbageRemovalPrice', Sort.desc);
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
      thenByGridDisassemblyPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gridDisassemblyPrice', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByGridDisassemblyPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gridDisassemblyPrice', Sort.desc);
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
      thenByInsulationPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'insulationPrice', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByInsulationPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'insulationPrice', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> thenByLeadId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leadId', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> thenByLeadIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leadId', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> thenByLocalId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'localId', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> thenByLocalIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'localId', Sort.desc);
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
      thenByParapetReinforcementPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'parapetReinforcementPrice', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByParapetReinforcementPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'parapetReinforcementPrice', Sort.desc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> thenByPdfFile() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pdfFile', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> thenByPdfFileDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pdfFile', Sort.desc);
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy> thenByRemoteId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'remoteId', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByRemoteIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'remoteId', Sort.desc);
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByRoofDisassemblyPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'roofDisassemblyPrice', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByRoofDisassemblyPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'roofDisassemblyPrice', Sort.desc);
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByScreedDisassemblyPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'screedDisassemblyPrice', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByScreedDisassemblyPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'screedDisassemblyPrice', Sort.desc);
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
      thenBySealingPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sealingPrice', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenBySealingPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sealingPrice', Sort.desc);
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

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenBySlabExtensionPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'slabExtensionPrice', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenBySlabExtensionPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'slabExtensionPrice', Sort.desc);
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
      thenByUnloadingPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unloadingPrice', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByUnloadingPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unloadingPrice', Sort.desc);
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
      thenByWindowsillExtensionPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'windowsillExtensionPrice', Sort.asc);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QAfterSortBy>
      thenByWindowsillExtensionPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'windowsillExtensionPrice', Sort.desc);
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

  QueryBuilder<MeasurementDB, MeasurementDB, QDistinct> distinctByDeliveryPrice(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'deliveryPrice',
          caseSensitive: caseSensitive);
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

  QueryBuilder<MeasurementDB, MeasurementDB, QDistinct> distinctByDoorphone(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'doorphone', caseSensitive: caseSensitive);
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

  QueryBuilder<MeasurementDB, MeasurementDB, QDistinct>
      distinctByExtensionSheathingPrice({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'extensionSheathingPrice',
          caseSensitive: caseSensitive);
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

  QueryBuilder<MeasurementDB, MeasurementDB, QDistinct> distinctByFlooring() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'flooring');
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QDistinct>
      distinctByFlooringCovering({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'flooringCovering',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QDistinct> distinctByFlooringPrice(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'flooringPrice',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QDistinct>
      distinctByGarbageRemoval() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'garbageRemoval');
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QDistinct>
      distinctByGarbageRemovalPrice({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'garbageRemovalPrice',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QDistinct>
      distinctByGridDisassembly() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'gridDisassembly');
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QDistinct>
      distinctByGridDisassemblyPrice({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'gridDisassemblyPrice',
          caseSensitive: caseSensitive);
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
      distinctByInsulationPrice({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'insulationPrice',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QDistinct> distinctByLeadId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'leadId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QDistinct> distinctByMeasurer(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'measurer', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QDistinct>
      distinctByParapetReinforcement() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'parapetReinforcement');
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QDistinct>
      distinctByParapetReinforcementPrice({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'parapetReinforcementPrice',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QDistinct> distinctByPdfFile(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'pdfFile', caseSensitive: caseSensitive);
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

  QueryBuilder<MeasurementDB, MeasurementDB, QDistinct> distinctByRemoteId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'remoteId');
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

  QueryBuilder<MeasurementDB, MeasurementDB, QDistinct>
      distinctByRoofDisassemblyPrice({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'roofDisassemblyPrice',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QDistinct>
      distinctByScreedDisassembly() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'screedDisassembly');
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QDistinct>
      distinctByScreedDisassemblyPrice({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'screedDisassemblyPrice',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QDistinct> distinctBySealing() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sealing');
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QDistinct> distinctBySealingPrice(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sealingPrice', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QDistinct>
      distinctBySlabExtension() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'slabExtension');
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QDistinct>
      distinctBySlabExtensionPrice({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'slabExtensionPrice',
          caseSensitive: caseSensitive);
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
      distinctByUnloadingPrice({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'unloadingPrice',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MeasurementDB, MeasurementDB, QDistinct>
      distinctByVacuumCleaner() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'vacuumCleaner');
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
      distinctByWindowsillExtensionPrice({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'windowsillExtensionPrice',
          caseSensitive: caseSensitive);
    });
  }
}

extension MeasurementDBQueryProperty
    on QueryBuilder<MeasurementDB, MeasurementDB, QQueryProperty> {
  QueryBuilder<MeasurementDB, int, QQueryOperations> localIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'localId');
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

  QueryBuilder<MeasurementDB, String, QQueryOperations>
      deliveryPriceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'deliveryPrice');
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

  QueryBuilder<MeasurementDB, String, QQueryOperations> doorphoneProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'doorphone');
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

  QueryBuilder<MeasurementDB, bool, QQueryOperations>
      extensionSheathingProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'extensionSheathing');
    });
  }

  QueryBuilder<MeasurementDB, String, QQueryOperations>
      extensionSheathingPriceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'extensionSheathingPrice');
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

  QueryBuilder<MeasurementDB, bool, QQueryOperations> flooringProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'flooring');
    });
  }

  QueryBuilder<MeasurementDB, String, QQueryOperations>
      flooringCoveringProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'flooringCovering');
    });
  }

  QueryBuilder<MeasurementDB, String, QQueryOperations>
      flooringPriceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'flooringPrice');
    });
  }

  QueryBuilder<MeasurementDB, bool, QQueryOperations> garbageRemovalProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'garbageRemoval');
    });
  }

  QueryBuilder<MeasurementDB, String, QQueryOperations>
      garbageRemovalPriceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'garbageRemovalPrice');
    });
  }

  QueryBuilder<MeasurementDB, bool, QQueryOperations>
      gridDisassemblyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'gridDisassembly');
    });
  }

  QueryBuilder<MeasurementDB, String, QQueryOperations>
      gridDisassemblyPriceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'gridDisassemblyPrice');
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
      insulationPriceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'insulationPrice');
    });
  }

  QueryBuilder<MeasurementDB, String, QQueryOperations> leadIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'leadId');
    });
  }

  QueryBuilder<MeasurementDB, String, QQueryOperations> measurerProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'measurer');
    });
  }

  QueryBuilder<MeasurementDB, bool, QQueryOperations>
      parapetReinforcementProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'parapetReinforcement');
    });
  }

  QueryBuilder<MeasurementDB, String, QQueryOperations>
      parapetReinforcementPriceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'parapetReinforcementPrice');
    });
  }

  QueryBuilder<MeasurementDB, String?, QQueryOperations> pdfFileProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'pdfFile');
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

  QueryBuilder<MeasurementDB, List<PositionDB>, QQueryOperations>
      positionsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'positions');
    });
  }

  QueryBuilder<MeasurementDB, String, QQueryOperations> prepaymentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'prepayment');
    });
  }

  QueryBuilder<MeasurementDB, int?, QQueryOperations> remoteIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'remoteId');
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

  QueryBuilder<MeasurementDB, String, QQueryOperations>
      roofDisassemblyPriceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'roofDisassemblyPrice');
    });
  }

  QueryBuilder<MeasurementDB, bool, QQueryOperations>
      screedDisassemblyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'screedDisassembly');
    });
  }

  QueryBuilder<MeasurementDB, String, QQueryOperations>
      screedDisassemblyPriceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'screedDisassemblyPrice');
    });
  }

  QueryBuilder<MeasurementDB, bool, QQueryOperations> sealingProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sealing');
    });
  }

  QueryBuilder<MeasurementDB, String, QQueryOperations> sealingPriceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sealingPrice');
    });
  }

  QueryBuilder<MeasurementDB, bool, QQueryOperations> slabExtensionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'slabExtension');
    });
  }

  QueryBuilder<MeasurementDB, String, QQueryOperations>
      slabExtensionPriceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'slabExtensionPrice');
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

  QueryBuilder<MeasurementDB, String, QQueryOperations>
      unloadingPriceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'unloadingPrice');
    });
  }

  QueryBuilder<MeasurementDB, bool, QQueryOperations> vacuumCleanerProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'vacuumCleaner');
    });
  }

  QueryBuilder<MeasurementDB, WindowsillExtension, QQueryOperations>
      windowsillExtensionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'windowsillExtension');
    });
  }

  QueryBuilder<MeasurementDB, String, QQueryOperations>
      windowsillExtensionPriceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'windowsillExtensionPrice');
    });
  }
}
