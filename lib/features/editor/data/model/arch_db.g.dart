// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'arch_db.dart';

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const ArchDBSchema = Schema(
  name: r'ArchDB',
  id: 3525627653264949913,
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
    r'x3': PropertySchema(
      id: 2,
      name: r'x3',
      type: IsarType.double,
    ),
    r'y1': PropertySchema(
      id: 3,
      name: r'y1',
      type: IsarType.double,
    ),
    r'y2': PropertySchema(
      id: 4,
      name: r'y2',
      type: IsarType.double,
    ),
    r'y3': PropertySchema(
      id: 5,
      name: r'y3',
      type: IsarType.double,
    )
  },
  estimateSize: _archDBEstimateSize,
  serialize: _archDBSerialize,
  deserialize: _archDBDeserialize,
  deserializeProp: _archDBDeserializeProp,
);

int _archDBEstimateSize(
  ArchDB object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _archDBSerialize(
  ArchDB object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDouble(offsets[0], object.x1);
  writer.writeDouble(offsets[1], object.x2);
  writer.writeDouble(offsets[2], object.x3);
  writer.writeDouble(offsets[3], object.y1);
  writer.writeDouble(offsets[4], object.y2);
  writer.writeDouble(offsets[5], object.y3);
}

ArchDB _archDBDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ArchDB();
  object.x1 = reader.readDouble(offsets[0]);
  object.x2 = reader.readDouble(offsets[1]);
  object.x3 = reader.readDoubleOrNull(offsets[2]);
  object.y1 = reader.readDouble(offsets[3]);
  object.y2 = reader.readDouble(offsets[4]);
  object.y3 = reader.readDoubleOrNull(offsets[5]);
  return object;
}

P _archDBDeserializeProp<P>(
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
      return (reader.readDoubleOrNull(offset)) as P;
    case 3:
      return (reader.readDouble(offset)) as P;
    case 4:
      return (reader.readDouble(offset)) as P;
    case 5:
      return (reader.readDoubleOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension ArchDBQueryFilter on QueryBuilder<ArchDB, ArchDB, QFilterCondition> {
  QueryBuilder<ArchDB, ArchDB, QAfterFilterCondition> x1EqualTo(
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

  QueryBuilder<ArchDB, ArchDB, QAfterFilterCondition> x1GreaterThan(
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

  QueryBuilder<ArchDB, ArchDB, QAfterFilterCondition> x1LessThan(
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

  QueryBuilder<ArchDB, ArchDB, QAfterFilterCondition> x1Between(
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

  QueryBuilder<ArchDB, ArchDB, QAfterFilterCondition> x2EqualTo(
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

  QueryBuilder<ArchDB, ArchDB, QAfterFilterCondition> x2GreaterThan(
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

  QueryBuilder<ArchDB, ArchDB, QAfterFilterCondition> x2LessThan(
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

  QueryBuilder<ArchDB, ArchDB, QAfterFilterCondition> x2Between(
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

  QueryBuilder<ArchDB, ArchDB, QAfterFilterCondition> x3IsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'x3',
      ));
    });
  }

  QueryBuilder<ArchDB, ArchDB, QAfterFilterCondition> x3IsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'x3',
      ));
    });
  }

  QueryBuilder<ArchDB, ArchDB, QAfterFilterCondition> x3EqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'x3',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ArchDB, ArchDB, QAfterFilterCondition> x3GreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'x3',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ArchDB, ArchDB, QAfterFilterCondition> x3LessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'x3',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ArchDB, ArchDB, QAfterFilterCondition> x3Between(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'x3',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ArchDB, ArchDB, QAfterFilterCondition> y1EqualTo(
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

  QueryBuilder<ArchDB, ArchDB, QAfterFilterCondition> y1GreaterThan(
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

  QueryBuilder<ArchDB, ArchDB, QAfterFilterCondition> y1LessThan(
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

  QueryBuilder<ArchDB, ArchDB, QAfterFilterCondition> y1Between(
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

  QueryBuilder<ArchDB, ArchDB, QAfterFilterCondition> y2EqualTo(
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

  QueryBuilder<ArchDB, ArchDB, QAfterFilterCondition> y2GreaterThan(
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

  QueryBuilder<ArchDB, ArchDB, QAfterFilterCondition> y2LessThan(
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

  QueryBuilder<ArchDB, ArchDB, QAfterFilterCondition> y2Between(
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

  QueryBuilder<ArchDB, ArchDB, QAfterFilterCondition> y3IsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'y3',
      ));
    });
  }

  QueryBuilder<ArchDB, ArchDB, QAfterFilterCondition> y3IsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'y3',
      ));
    });
  }

  QueryBuilder<ArchDB, ArchDB, QAfterFilterCondition> y3EqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'y3',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ArchDB, ArchDB, QAfterFilterCondition> y3GreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'y3',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ArchDB, ArchDB, QAfterFilterCondition> y3LessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'y3',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ArchDB, ArchDB, QAfterFilterCondition> y3Between(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'y3',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }
}

extension ArchDBQueryObject on QueryBuilder<ArchDB, ArchDB, QFilterCondition> {}
