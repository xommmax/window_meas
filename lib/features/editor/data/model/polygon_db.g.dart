// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'polygon_db.dart';

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const PolygonDBSchema = Schema(
  name: r'PolygonDB',
  id: -4105417245065915934,
  properties: {
    r'dx': PropertySchema(
      id: 0,
      name: r'dx',
      type: IsarType.doubleList,
    ),
    r'dy': PropertySchema(
      id: 1,
      name: r'dy',
      type: IsarType.doubleList,
    )
  },
  estimateSize: _polygonDBEstimateSize,
  serialize: _polygonDBSerialize,
  deserialize: _polygonDBDeserialize,
  deserializeProp: _polygonDBDeserializeProp,
);

int _polygonDBEstimateSize(
  PolygonDB object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.dx.length * 8;
  bytesCount += 3 + object.dy.length * 8;
  return bytesCount;
}

void _polygonDBSerialize(
  PolygonDB object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDoubleList(offsets[0], object.dx);
  writer.writeDoubleList(offsets[1], object.dy);
}

PolygonDB _polygonDBDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = PolygonDB();
  object.dx = reader.readDoubleList(offsets[0]) ?? [];
  object.dy = reader.readDoubleList(offsets[1]) ?? [];
  return object;
}

P _polygonDBDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDoubleList(offset) ?? []) as P;
    case 1:
      return (reader.readDoubleList(offset) ?? []) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension PolygonDBQueryFilter
    on QueryBuilder<PolygonDB, PolygonDB, QFilterCondition> {
  QueryBuilder<PolygonDB, PolygonDB, QAfterFilterCondition> dxElementEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dx',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PolygonDB, PolygonDB, QAfterFilterCondition>
      dxElementGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dx',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PolygonDB, PolygonDB, QAfterFilterCondition> dxElementLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dx',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PolygonDB, PolygonDB, QAfterFilterCondition> dxElementBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dx',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PolygonDB, PolygonDB, QAfterFilterCondition> dxLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'dx',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<PolygonDB, PolygonDB, QAfterFilterCondition> dxIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'dx',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<PolygonDB, PolygonDB, QAfterFilterCondition> dxIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'dx',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<PolygonDB, PolygonDB, QAfterFilterCondition> dxLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'dx',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<PolygonDB, PolygonDB, QAfterFilterCondition> dxLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'dx',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<PolygonDB, PolygonDB, QAfterFilterCondition> dxLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'dx',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<PolygonDB, PolygonDB, QAfterFilterCondition> dyElementEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dy',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PolygonDB, PolygonDB, QAfterFilterCondition>
      dyElementGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dy',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PolygonDB, PolygonDB, QAfterFilterCondition> dyElementLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dy',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PolygonDB, PolygonDB, QAfterFilterCondition> dyElementBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dy',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PolygonDB, PolygonDB, QAfterFilterCondition> dyLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'dy',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<PolygonDB, PolygonDB, QAfterFilterCondition> dyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'dy',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<PolygonDB, PolygonDB, QAfterFilterCondition> dyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'dy',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<PolygonDB, PolygonDB, QAfterFilterCondition> dyLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'dy',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<PolygonDB, PolygonDB, QAfterFilterCondition> dyLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'dy',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<PolygonDB, PolygonDB, QAfterFilterCondition> dyLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'dy',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }
}

extension PolygonDBQueryObject
    on QueryBuilder<PolygonDB, PolygonDB, QFilterCondition> {}
