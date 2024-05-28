// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'line_db.dart';

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const LineDBSchema = Schema(
  name: r'LineDB',
  id: 1477486582522620643,
  properties: {
    r'x1': PropertySchema(
      id: 0,
      name: r'x1',
      type: IsarType.double,
    ),
    r'x2': PropertySchema(
      id: 1,
      name: r'x2',
      type: IsarType.double,
    ),
    r'y1': PropertySchema(
      id: 2,
      name: r'y1',
      type: IsarType.double,
    ),
    r'y2': PropertySchema(
      id: 3,
      name: r'y2',
      type: IsarType.double,
    )
  },
  estimateSize: _lineDBEstimateSize,
  serialize: _lineDBSerialize,
  deserialize: _lineDBDeserialize,
  deserializeProp: _lineDBDeserializeProp,
);

int _lineDBEstimateSize(
  LineDB object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _lineDBSerialize(
  LineDB object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDouble(offsets[0], object.x1);
  writer.writeDouble(offsets[1], object.x2);
  writer.writeDouble(offsets[2], object.y1);
  writer.writeDouble(offsets[3], object.y2);
}

LineDB _lineDBDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = LineDB();
  object.x1 = reader.readDouble(offsets[0]);
  object.x2 = reader.readDouble(offsets[1]);
  object.y1 = reader.readDouble(offsets[2]);
  object.y2 = reader.readDouble(offsets[3]);
  return object;
}

P _lineDBDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDouble(offset)) as P;
    case 1:
      return (reader.readDouble(offset)) as P;
    case 2:
      return (reader.readDouble(offset)) as P;
    case 3:
      return (reader.readDouble(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension LineDBQueryFilter on QueryBuilder<LineDB, LineDB, QFilterCondition> {
  QueryBuilder<LineDB, LineDB, QAfterFilterCondition> x1EqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'x1',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<LineDB, LineDB, QAfterFilterCondition> x1GreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'x1',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<LineDB, LineDB, QAfterFilterCondition> x1LessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'x1',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<LineDB, LineDB, QAfterFilterCondition> x1Between(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'x1',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<LineDB, LineDB, QAfterFilterCondition> x2EqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'x2',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<LineDB, LineDB, QAfterFilterCondition> x2GreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'x2',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<LineDB, LineDB, QAfterFilterCondition> x2LessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'x2',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<LineDB, LineDB, QAfterFilterCondition> x2Between(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'x2',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<LineDB, LineDB, QAfterFilterCondition> y1EqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'y1',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<LineDB, LineDB, QAfterFilterCondition> y1GreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'y1',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<LineDB, LineDB, QAfterFilterCondition> y1LessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'y1',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<LineDB, LineDB, QAfterFilterCondition> y1Between(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'y1',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<LineDB, LineDB, QAfterFilterCondition> y2EqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'y2',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<LineDB, LineDB, QAfterFilterCondition> y2GreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'y2',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<LineDB, LineDB, QAfterFilterCondition> y2LessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'y2',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<LineDB, LineDB, QAfterFilterCondition> y2Between(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'y2',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }
}

extension LineDBQueryObject on QueryBuilder<LineDB, LineDB, QFilterCondition> {}
