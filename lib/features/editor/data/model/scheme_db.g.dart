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
    r'lines': PropertySchema(
      id: 0,
      name: r'lines',
      type: IsarType.objectList,
      target: r'LineDB',
    ),
    r'polygons': PropertySchema(
      id: 1,
      name: r'polygons',
      type: IsarType.objectList,
      target: r'PolygonDB',
    ),
    r'sizeSegments': PropertySchema(
      id: 2,
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
  bytesCount += 3 + object.lines.length * 3;
  {
    final offsets = allOffsets[LineDB]!;
    for (var i = 0; i < object.lines.length; i++) {
      final value = object.lines[i];
      bytesCount += LineDBSchema.estimateSize(value, offsets, allOffsets);
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
  writer.writeObjectList<LineDB>(
    offsets[0],
    allOffsets,
    LineDBSchema.serialize,
    object.lines,
  );
  writer.writeObjectList<PolygonDB>(
    offsets[1],
    allOffsets,
    PolygonDBSchema.serialize,
    object.polygons,
  );
  writer.writeObjectList<SizeSegmentDB>(
    offsets[2],
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
  object.lines = reader.readObjectList<LineDB>(
        offsets[0],
        LineDBSchema.deserialize,
        allOffsets,
        LineDB(),
      ) ??
      [];
  object.polygons = reader.readObjectList<PolygonDB>(
        offsets[1],
        PolygonDBSchema.deserialize,
        allOffsets,
        PolygonDB(),
      ) ??
      [];
  object.sizeSegments = reader.readObjectList<SizeSegmentDB>(
        offsets[2],
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
      return (reader.readObjectList<LineDB>(
            offset,
            LineDBSchema.deserialize,
            allOffsets,
            LineDB(),
          ) ??
          []) as P;
    case 1:
      return (reader.readObjectList<PolygonDB>(
            offset,
            PolygonDBSchema.deserialize,
            allOffsets,
            PolygonDB(),
          ) ??
          []) as P;
    case 2:
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
  QueryBuilder<SchemeDB, SchemeDB, QAfterFilterCondition> linesElement(
      FilterQuery<LineDB> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'lines');
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
