// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scheme_db.dart';

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const SchemeDBSchema = Schema(
  name: r'SchemeDB',
  id: -7992904371586469471,
  properties: {
    r'arches': PropertySchema(
      id: 0,
      name: r'arches',
      type: IsarType.objectList,
      target: r'ArchDB',
    ),
    r'fillingTypes': PropertySchema(
      id: 1,
      name: r'fillingTypes',
      type: IsarType.objectList,
      target: r'FillingTypeRecordDB',
    ),
    r'id': PropertySchema(
      id: 2,
      name: r'id',
      type: IsarType.string,
    ),
    r'lines': PropertySchema(
      id: 3,
      name: r'lines',
      type: IsarType.objectList,
      target: r'LineDB',
    ),
    r'openingTypes': PropertySchema(
      id: 4,
      name: r'openingTypes',
      type: IsarType.objectList,
      target: r'OpeningTypeRecordDB',
    ),
    r'polygons': PropertySchema(
      id: 5,
      name: r'polygons',
      type: IsarType.objectList,
      target: r'PolygonDB',
    ),
    r'sizeSegments': PropertySchema(
      id: 6,
      name: r'sizeSegments',
      type: IsarType.objectList,
      target: r'SizeSegmentDB',
    )
  },
  estimateSize: _schemeDBEstimateSize,
  serialize: _schemeDBSerialize,
  deserialize: _schemeDBDeserialize,
  deserializeProp: _schemeDBDeserializeProp,
);

int _schemeDBEstimateSize(
  SchemeDB object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.arches.length * 3;
  {
    final offsets = allOffsets[ArchDB]!;
    for (var i = 0; i < object.arches.length; i++) {
      final value = object.arches[i];
      bytesCount += ArchDBSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  bytesCount += 3 + object.fillingTypes.length * 3;
  {
    final offsets = allOffsets[FillingTypeRecordDB]!;
    for (var i = 0; i < object.fillingTypes.length; i++) {
      final value = object.fillingTypes[i];
      bytesCount +=
          FillingTypeRecordDBSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  bytesCount += 3 + object.id.length * 3;
  bytesCount += 3 + object.lines.length * 3;
  {
    final offsets = allOffsets[LineDB]!;
    for (var i = 0; i < object.lines.length; i++) {
      final value = object.lines[i];
      bytesCount += LineDBSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  bytesCount += 3 + object.openingTypes.length * 3;
  {
    final offsets = allOffsets[OpeningTypeRecordDB]!;
    for (var i = 0; i < object.openingTypes.length; i++) {
      final value = object.openingTypes[i];
      bytesCount +=
          OpeningTypeRecordDBSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  bytesCount += 3 + object.polygons.length * 3;
  {
    final offsets = allOffsets[PolygonDB]!;
    for (var i = 0; i < object.polygons.length; i++) {
      final value = object.polygons[i];
      bytesCount += PolygonDBSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  bytesCount += 3 + object.sizeSegments.length * 3;
  {
    final offsets = allOffsets[SizeSegmentDB]!;
    for (var i = 0; i < object.sizeSegments.length; i++) {
      final value = object.sizeSegments[i];
      bytesCount +=
          SizeSegmentDBSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  return bytesCount;
}

void _schemeDBSerialize(
  SchemeDB object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeObjectList<ArchDB>(
    offsets[0],
    allOffsets,
    ArchDBSchema.serialize,
    object.arches,
  );
  writer.writeObjectList<FillingTypeRecordDB>(
    offsets[1],
    allOffsets,
    FillingTypeRecordDBSchema.serialize,
    object.fillingTypes,
  );
  writer.writeString(offsets[2], object.id);
  writer.writeObjectList<LineDB>(
    offsets[3],
    allOffsets,
    LineDBSchema.serialize,
    object.lines,
  );
  writer.writeObjectList<OpeningTypeRecordDB>(
    offsets[4],
    allOffsets,
    OpeningTypeRecordDBSchema.serialize,
    object.openingTypes,
  );
  writer.writeObjectList<PolygonDB>(
    offsets[5],
    allOffsets,
    PolygonDBSchema.serialize,
    object.polygons,
  );
  writer.writeObjectList<SizeSegmentDB>(
    offsets[6],
    allOffsets,
    SizeSegmentDBSchema.serialize,
    object.sizeSegments,
  );
}

SchemeDB _schemeDBDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = SchemeDB();
  object.arches = reader.readObjectList<ArchDB>(
        offsets[0],
        ArchDBSchema.deserialize,
        allOffsets,
        ArchDB(),
      ) ??
      [];
  object.fillingTypes = reader.readObjectList<FillingTypeRecordDB>(
        offsets[1],
        FillingTypeRecordDBSchema.deserialize,
        allOffsets,
        FillingTypeRecordDB(),
      ) ??
      [];
  object.id = reader.readString(offsets[2]);
  object.lines = reader.readObjectList<LineDB>(
        offsets[3],
        LineDBSchema.deserialize,
        allOffsets,
        LineDB(),
      ) ??
      [];
  object.openingTypes = reader.readObjectList<OpeningTypeRecordDB>(
        offsets[4],
        OpeningTypeRecordDBSchema.deserialize,
        allOffsets,
        OpeningTypeRecordDB(),
      ) ??
      [];
  object.polygons = reader.readObjectList<PolygonDB>(
        offsets[5],
        PolygonDBSchema.deserialize,
        allOffsets,
        PolygonDB(),
      ) ??
      [];
  object.sizeSegments = reader.readObjectList<SizeSegmentDB>(
        offsets[6],
        SizeSegmentDBSchema.deserialize,
        allOffsets,
        SizeSegmentDB(),
      ) ??
      [];
  return object;
}

P _schemeDBDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readObjectList<ArchDB>(
            offset,
            ArchDBSchema.deserialize,
            allOffsets,
            ArchDB(),
          ) ??
          []) as P;
    case 1:
      return (reader.readObjectList<FillingTypeRecordDB>(
            offset,
            FillingTypeRecordDBSchema.deserialize,
            allOffsets,
            FillingTypeRecordDB(),
          ) ??
          []) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readObjectList<LineDB>(
            offset,
            LineDBSchema.deserialize,
            allOffsets,
            LineDB(),
          ) ??
          []) as P;
    case 4:
      return (reader.readObjectList<OpeningTypeRecordDB>(
            offset,
            OpeningTypeRecordDBSchema.deserialize,
            allOffsets,
            OpeningTypeRecordDB(),
          ) ??
          []) as P;
    case 5:
      return (reader.readObjectList<PolygonDB>(
            offset,
            PolygonDBSchema.deserialize,
            allOffsets,
            PolygonDB(),
          ) ??
          []) as P;
    case 6:
      return (reader.readObjectList<SizeSegmentDB>(
            offset,
            SizeSegmentDBSchema.deserialize,
            allOffsets,
            SizeSegmentDB(),
          ) ??
          []) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension SchemeDBQueryFilter
    on QueryBuilder<SchemeDB, SchemeDB, QFilterCondition> {
  QueryBuilder<SchemeDB, SchemeDB, QAfterFilterCondition> archesLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'arches',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<SchemeDB, SchemeDB, QAfterFilterCondition> archesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'arches',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<SchemeDB, SchemeDB, QAfterFilterCondition> archesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'arches',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<SchemeDB, SchemeDB, QAfterFilterCondition> archesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'arches',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<SchemeDB, SchemeDB, QAfterFilterCondition>
      archesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'arches',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<SchemeDB, SchemeDB, QAfterFilterCondition> archesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'arches',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<SchemeDB, SchemeDB, QAfterFilterCondition>
      fillingTypesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'fillingTypes',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<SchemeDB, SchemeDB, QAfterFilterCondition>
      fillingTypesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'fillingTypes',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<SchemeDB, SchemeDB, QAfterFilterCondition>
      fillingTypesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'fillingTypes',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<SchemeDB, SchemeDB, QAfterFilterCondition>
      fillingTypesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'fillingTypes',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<SchemeDB, SchemeDB, QAfterFilterCondition>
      fillingTypesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'fillingTypes',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<SchemeDB, SchemeDB, QAfterFilterCondition>
      fillingTypesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'fillingTypes',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<SchemeDB, SchemeDB, QAfterFilterCondition> idEqualTo(
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

  QueryBuilder<SchemeDB, SchemeDB, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<SchemeDB, SchemeDB, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<SchemeDB, SchemeDB, QAfterFilterCondition> idBetween(
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

  QueryBuilder<SchemeDB, SchemeDB, QAfterFilterCondition> idStartsWith(
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

  QueryBuilder<SchemeDB, SchemeDB, QAfterFilterCondition> idEndsWith(
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

  QueryBuilder<SchemeDB, SchemeDB, QAfterFilterCondition> idContains(
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

  QueryBuilder<SchemeDB, SchemeDB, QAfterFilterCondition> idMatches(
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

  QueryBuilder<SchemeDB, SchemeDB, QAfterFilterCondition> idIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<SchemeDB, SchemeDB, QAfterFilterCondition> idIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<SchemeDB, SchemeDB, QAfterFilterCondition> linesLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'lines',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<SchemeDB, SchemeDB, QAfterFilterCondition> linesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'lines',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<SchemeDB, SchemeDB, QAfterFilterCondition> linesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'lines',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<SchemeDB, SchemeDB, QAfterFilterCondition> linesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'lines',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<SchemeDB, SchemeDB, QAfterFilterCondition>
      linesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'lines',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<SchemeDB, SchemeDB, QAfterFilterCondition> linesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'lines',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<SchemeDB, SchemeDB, QAfterFilterCondition>
      openingTypesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'openingTypes',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<SchemeDB, SchemeDB, QAfterFilterCondition>
      openingTypesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'openingTypes',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<SchemeDB, SchemeDB, QAfterFilterCondition>
      openingTypesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'openingTypes',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<SchemeDB, SchemeDB, QAfterFilterCondition>
      openingTypesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'openingTypes',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<SchemeDB, SchemeDB, QAfterFilterCondition>
      openingTypesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'openingTypes',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<SchemeDB, SchemeDB, QAfterFilterCondition>
      openingTypesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'openingTypes',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<SchemeDB, SchemeDB, QAfterFilterCondition> polygonsLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'polygons',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<SchemeDB, SchemeDB, QAfterFilterCondition> polygonsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'polygons',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<SchemeDB, SchemeDB, QAfterFilterCondition> polygonsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'polygons',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<SchemeDB, SchemeDB, QAfterFilterCondition>
      polygonsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'polygons',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<SchemeDB, SchemeDB, QAfterFilterCondition>
      polygonsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'polygons',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<SchemeDB, SchemeDB, QAfterFilterCondition> polygonsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'polygons',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<SchemeDB, SchemeDB, QAfterFilterCondition>
      sizeSegmentsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'sizeSegments',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<SchemeDB, SchemeDB, QAfterFilterCondition>
      sizeSegmentsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'sizeSegments',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<SchemeDB, SchemeDB, QAfterFilterCondition>
      sizeSegmentsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'sizeSegments',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<SchemeDB, SchemeDB, QAfterFilterCondition>
      sizeSegmentsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'sizeSegments',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<SchemeDB, SchemeDB, QAfterFilterCondition>
      sizeSegmentsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'sizeSegments',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<SchemeDB, SchemeDB, QAfterFilterCondition>
      sizeSegmentsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'sizeSegments',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }
}

extension SchemeDBQueryObject
    on QueryBuilder<SchemeDB, SchemeDB, QFilterCondition> {
  QueryBuilder<SchemeDB, SchemeDB, QAfterFilterCondition> archesElement(
      FilterQuery<ArchDB> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'arches');
    });
  }

  QueryBuilder<SchemeDB, SchemeDB, QAfterFilterCondition> fillingTypesElement(
      FilterQuery<FillingTypeRecordDB> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'fillingTypes');
    });
  }

  QueryBuilder<SchemeDB, SchemeDB, QAfterFilterCondition> linesElement(
      FilterQuery<LineDB> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'lines');
    });
  }

  QueryBuilder<SchemeDB, SchemeDB, QAfterFilterCondition> openingTypesElement(
      FilterQuery<OpeningTypeRecordDB> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'openingTypes');
    });
  }

  QueryBuilder<SchemeDB, SchemeDB, QAfterFilterCondition> polygonsElement(
      FilterQuery<PolygonDB> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'polygons');
    });
  }

  QueryBuilder<SchemeDB, SchemeDB, QAfterFilterCondition> sizeSegmentsElement(
      FilterQuery<SizeSegmentDB> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'sizeSegments');
    });
  }
}
