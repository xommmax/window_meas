// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expander_db.dart';

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const ExpanderDBSchema = Schema(
  name: r'ExpanderDB',
  id: 5321277302247905173,
  properties: {
    r'createdAt': PropertySchema(
      id: 0,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'length': PropertySchema(
      id: 1,
      name: r'length',
      type: IsarType.string,
    ),
    r'side': PropertySchema(
      id: 2,
      name: r'side',
      type: IsarType.string,
      enumMap: _ExpanderDBsideEnumValueMap,
    ),
    r'width': PropertySchema(
      id: 3,
      name: r'width',
      type: IsarType.string,
      enumMap: _ExpanderDBwidthEnumValueMap,
    )
  },
  estimateSize: _expanderDBEstimateSize,
  serialize: _expanderDBSerialize,
  deserialize: _expanderDBDeserialize,
  deserializeProp: _expanderDBDeserializeProp,
);

int _expanderDBEstimateSize(
  ExpanderDB object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.length.length * 3;
  bytesCount += 3 + object.side.name.length * 3;
  bytesCount += 3 + object.width.name.length * 3;
  return bytesCount;
}

void _expanderDBSerialize(
  ExpanderDB object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.createdAt);
  writer.writeString(offsets[1], object.length);
  writer.writeString(offsets[2], object.side.name);
  writer.writeString(offsets[3], object.width.name);
}

ExpanderDB _expanderDBDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ExpanderDB();
  object.createdAt = reader.readDateTime(offsets[0]);
  object.length = reader.readString(offsets[1]);
  object.side =
      _ExpanderDBsideValueEnumMap[reader.readStringOrNull(offsets[2])] ??
          ExpanderSide.none;
  object.width =
      _ExpanderDBwidthValueEnumMap[reader.readStringOrNull(offsets[3])] ??
          ExpanderWidth.none;
  return object;
}

P _expanderDBDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTime(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (_ExpanderDBsideValueEnumMap[reader.readStringOrNull(offset)] ??
          ExpanderSide.none) as P;
    case 3:
      return (_ExpanderDBwidthValueEnumMap[reader.readStringOrNull(offset)] ??
          ExpanderWidth.none) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _ExpanderDBsideEnumValueMap = {
  r'none': r'none',
  r'left': r'left',
  r'right': r'right',
  r'top': r'top',
  r'bottom': r'bottom',
};
const _ExpanderDBsideValueEnumMap = {
  r'none': ExpanderSide.none,
  r'left': ExpanderSide.left,
  r'right': ExpanderSide.right,
  r'top': ExpanderSide.top,
  r'bottom': ExpanderSide.bottom,
};
const _ExpanderDBwidthEnumValueMap = {
  r'none': r'none',
  r'w20': r'w20',
  r'w35': r'w35',
  r'w40': r'w40',
  r'w60': r'w60',
  r'w100': r'w100',
};
const _ExpanderDBwidthValueEnumMap = {
  r'none': ExpanderWidth.none,
  r'w20': ExpanderWidth.w20,
  r'w35': ExpanderWidth.w35,
  r'w40': ExpanderWidth.w40,
  r'w60': ExpanderWidth.w60,
  r'w100': ExpanderWidth.w100,
};

extension ExpanderDBQueryFilter
    on QueryBuilder<ExpanderDB, ExpanderDB, QFilterCondition> {
  QueryBuilder<ExpanderDB, ExpanderDB, QAfterFilterCondition> createdAtEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<ExpanderDB, ExpanderDB, QAfterFilterCondition>
      createdAtGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<ExpanderDB, ExpanderDB, QAfterFilterCondition> createdAtLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<ExpanderDB, ExpanderDB, QAfterFilterCondition> createdAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'createdAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ExpanderDB, ExpanderDB, QAfterFilterCondition> lengthEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'length',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderDB, ExpanderDB, QAfterFilterCondition> lengthGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'length',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderDB, ExpanderDB, QAfterFilterCondition> lengthLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'length',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderDB, ExpanderDB, QAfterFilterCondition> lengthBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'length',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderDB, ExpanderDB, QAfterFilterCondition> lengthStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'length',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderDB, ExpanderDB, QAfterFilterCondition> lengthEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'length',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderDB, ExpanderDB, QAfterFilterCondition> lengthContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'length',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderDB, ExpanderDB, QAfterFilterCondition> lengthMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'length',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderDB, ExpanderDB, QAfterFilterCondition> lengthIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'length',
        value: '',
      ));
    });
  }

  QueryBuilder<ExpanderDB, ExpanderDB, QAfterFilterCondition>
      lengthIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'length',
        value: '',
      ));
    });
  }

  QueryBuilder<ExpanderDB, ExpanderDB, QAfterFilterCondition> sideEqualTo(
    ExpanderSide value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'side',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderDB, ExpanderDB, QAfterFilterCondition> sideGreaterThan(
    ExpanderSide value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'side',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderDB, ExpanderDB, QAfterFilterCondition> sideLessThan(
    ExpanderSide value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'side',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderDB, ExpanderDB, QAfterFilterCondition> sideBetween(
    ExpanderSide lower,
    ExpanderSide upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'side',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderDB, ExpanderDB, QAfterFilterCondition> sideStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'side',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderDB, ExpanderDB, QAfterFilterCondition> sideEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'side',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderDB, ExpanderDB, QAfterFilterCondition> sideContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'side',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderDB, ExpanderDB, QAfterFilterCondition> sideMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'side',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderDB, ExpanderDB, QAfterFilterCondition> sideIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'side',
        value: '',
      ));
    });
  }

  QueryBuilder<ExpanderDB, ExpanderDB, QAfterFilterCondition> sideIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'side',
        value: '',
      ));
    });
  }

  QueryBuilder<ExpanderDB, ExpanderDB, QAfterFilterCondition> widthEqualTo(
    ExpanderWidth value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'width',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderDB, ExpanderDB, QAfterFilterCondition> widthGreaterThan(
    ExpanderWidth value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'width',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderDB, ExpanderDB, QAfterFilterCondition> widthLessThan(
    ExpanderWidth value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'width',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderDB, ExpanderDB, QAfterFilterCondition> widthBetween(
    ExpanderWidth lower,
    ExpanderWidth upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'width',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderDB, ExpanderDB, QAfterFilterCondition> widthStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'width',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderDB, ExpanderDB, QAfterFilterCondition> widthEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'width',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderDB, ExpanderDB, QAfterFilterCondition> widthContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'width',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderDB, ExpanderDB, QAfterFilterCondition> widthMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'width',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderDB, ExpanderDB, QAfterFilterCondition> widthIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'width',
        value: '',
      ));
    });
  }

  QueryBuilder<ExpanderDB, ExpanderDB, QAfterFilterCondition>
      widthIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'width',
        value: '',
      ));
    });
  }
}

extension ExpanderDBQueryObject
    on QueryBuilder<ExpanderDB, ExpanderDB, QFilterCondition> {}
