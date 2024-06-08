// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'opening_type_record_db.dart';

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const OpeningTypeRecordDBSchema = Schema(
  name: r'OpeningTypeRecordDB',
  id: -4640367583017635367,
  properties: {
    r'openingType': PropertySchema(
      id: 0,
      name: r'openingType',
      type: IsarType.string,
      enumMap: _OpeningTypeRecordDBopeningTypeEnumValueMap,
    ),
    r'polygons': PropertySchema(
      id: 1,
      name: r'polygons',
      type: IsarType.objectList,
      target: r'PolygonDB',
    )
  },
  estimateSize: _openingTypeRecordDBEstimateSize,
  serialize: _openingTypeRecordDBSerialize,
  deserialize: _openingTypeRecordDBDeserialize,
  deserializeProp: _openingTypeRecordDBDeserializeProp,
);

int _openingTypeRecordDBEstimateSize(
  OpeningTypeRecordDB object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.openingType.name.length * 3;
  bytesCount += 3 + object.polygons.length * 3;
  {
    final offsets = allOffsets[PolygonDB]!;
    for (var i = 0; i < object.polygons.length; i++) {
      final value = object.polygons[i];
      bytesCount += PolygonDBSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  return bytesCount;
}

void _openingTypeRecordDBSerialize(
  OpeningTypeRecordDB object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.openingType.name);
  writer.writeObjectList<PolygonDB>(
    offsets[1],
    allOffsets,
    PolygonDBSchema.serialize,
    object.polygons,
  );
}

OpeningTypeRecordDB _openingTypeRecordDBDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = OpeningTypeRecordDB();
  object.openingType = _OpeningTypeRecordDBopeningTypeValueEnumMap[
          reader.readStringOrNull(offsets[0])] ??
      OpeningType.rotaryRight;
  object.polygons = reader.readObjectList<PolygonDB>(
        offsets[1],
        PolygonDBSchema.deserialize,
        allOffsets,
        PolygonDB(),
      ) ??
      [];
  return object;
}

P _openingTypeRecordDBDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (_OpeningTypeRecordDBopeningTypeValueEnumMap[
              reader.readStringOrNull(offset)] ??
          OpeningType.rotaryRight) as P;
    case 1:
      return (reader.readObjectList<PolygonDB>(
            offset,
            PolygonDBSchema.deserialize,
            allOffsets,
            PolygonDB(),
          ) ??
          []) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _OpeningTypeRecordDBopeningTypeEnumValueMap = {
  r'rotaryRight': r'rotaryRight',
  r'rotaryLeft': r'rotaryLeft',
  r'tiltTurnRight': r'tiltTurnRight',
  r'tiltTurnLeft': r'tiltTurnLeft',
  r'rotaryMullionRight': r'rotaryMullionRight',
  r'rotaryMullionLeft': r'rotaryMullionLeft',
  r'slidingRight': r'slidingRight',
  r'slidingLeft': r'slidingLeft',
  r'liftAndSlideRight': r'liftAndSlideRight',
  r'liftAndSlideLeft': r'liftAndSlideLeft',
  r'retractableRight': r'retractableRight',
  r'retractableLeft': r'retractableLeft',
  r'transom': r'transom',
  r'topHung': r'topHung',
  r'midHung': r'midHung',
  r'blind': r'blind',
};
const _OpeningTypeRecordDBopeningTypeValueEnumMap = {
  r'rotaryRight': OpeningType.rotaryRight,
  r'rotaryLeft': OpeningType.rotaryLeft,
  r'tiltTurnRight': OpeningType.tiltTurnRight,
  r'tiltTurnLeft': OpeningType.tiltTurnLeft,
  r'rotaryMullionRight': OpeningType.rotaryMullionRight,
  r'rotaryMullionLeft': OpeningType.rotaryMullionLeft,
  r'slidingRight': OpeningType.slidingRight,
  r'slidingLeft': OpeningType.slidingLeft,
  r'liftAndSlideRight': OpeningType.liftAndSlideRight,
  r'liftAndSlideLeft': OpeningType.liftAndSlideLeft,
  r'retractableRight': OpeningType.retractableRight,
  r'retractableLeft': OpeningType.retractableLeft,
  r'transom': OpeningType.transom,
  r'topHung': OpeningType.topHung,
  r'midHung': OpeningType.midHung,
  r'blind': OpeningType.blind,
};

extension OpeningTypeRecordDBQueryFilter on QueryBuilder<OpeningTypeRecordDB,
    OpeningTypeRecordDB, QFilterCondition> {
  QueryBuilder<OpeningTypeRecordDB, OpeningTypeRecordDB, QAfterFilterCondition>
      openingTypeEqualTo(
    OpeningType value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'openingType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OpeningTypeRecordDB, OpeningTypeRecordDB, QAfterFilterCondition>
      openingTypeGreaterThan(
    OpeningType value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'openingType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OpeningTypeRecordDB, OpeningTypeRecordDB, QAfterFilterCondition>
      openingTypeLessThan(
    OpeningType value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'openingType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OpeningTypeRecordDB, OpeningTypeRecordDB, QAfterFilterCondition>
      openingTypeBetween(
    OpeningType lower,
    OpeningType upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'openingType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OpeningTypeRecordDB, OpeningTypeRecordDB, QAfterFilterCondition>
      openingTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'openingType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OpeningTypeRecordDB, OpeningTypeRecordDB, QAfterFilterCondition>
      openingTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'openingType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OpeningTypeRecordDB, OpeningTypeRecordDB, QAfterFilterCondition>
      openingTypeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'openingType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OpeningTypeRecordDB, OpeningTypeRecordDB, QAfterFilterCondition>
      openingTypeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'openingType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OpeningTypeRecordDB, OpeningTypeRecordDB, QAfterFilterCondition>
      openingTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'openingType',
        value: '',
      ));
    });
  }

  QueryBuilder<OpeningTypeRecordDB, OpeningTypeRecordDB, QAfterFilterCondition>
      openingTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'openingType',
        value: '',
      ));
    });
  }

  QueryBuilder<OpeningTypeRecordDB, OpeningTypeRecordDB, QAfterFilterCondition>
      polygonsLengthEqualTo(int length) {
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

  QueryBuilder<OpeningTypeRecordDB, OpeningTypeRecordDB, QAfterFilterCondition>
      polygonsIsEmpty() {
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

  QueryBuilder<OpeningTypeRecordDB, OpeningTypeRecordDB, QAfterFilterCondition>
      polygonsIsNotEmpty() {
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

  QueryBuilder<OpeningTypeRecordDB, OpeningTypeRecordDB, QAfterFilterCondition>
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

  QueryBuilder<OpeningTypeRecordDB, OpeningTypeRecordDB, QAfterFilterCondition>
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

  QueryBuilder<OpeningTypeRecordDB, OpeningTypeRecordDB, QAfterFilterCondition>
      polygonsLengthBetween(
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
}

extension OpeningTypeRecordDBQueryObject on QueryBuilder<OpeningTypeRecordDB,
    OpeningTypeRecordDB, QFilterCondition> {
  QueryBuilder<OpeningTypeRecordDB, OpeningTypeRecordDB, QAfterFilterCondition>
      polygonsElement(FilterQuery<PolygonDB> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'polygons');
    });
  }
}
