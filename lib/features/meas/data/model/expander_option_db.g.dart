// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expander_option_db.dart';

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const ExpanderOptionDBSchema = Schema(
  name: r'ExpanderOptionDB',
  id: -4730621696335566977,
  properties: {
    r'bottomAmount': PropertySchema(
      id: 0,
      name: r'bottomAmount',
      type: IsarType.string,
    ),
    r'bottomEnabled': PropertySchema(
      id: 1,
      name: r'bottomEnabled',
      type: IsarType.bool,
    ),
    r'bottomLength': PropertySchema(
      id: 2,
      name: r'bottomLength',
      type: IsarType.string,
    ),
    r'bottomWidth': PropertySchema(
      id: 3,
      name: r'bottomWidth',
      type: IsarType.string,
      enumMap: _ExpanderOptionDBbottomWidthEnumValueMap,
    ),
    r'leftAmount': PropertySchema(
      id: 4,
      name: r'leftAmount',
      type: IsarType.string,
    ),
    r'leftEnabled': PropertySchema(
      id: 5,
      name: r'leftEnabled',
      type: IsarType.bool,
    ),
    r'leftLength': PropertySchema(
      id: 6,
      name: r'leftLength',
      type: IsarType.string,
    ),
    r'leftWidth': PropertySchema(
      id: 7,
      name: r'leftWidth',
      type: IsarType.string,
      enumMap: _ExpanderOptionDBleftWidthEnumValueMap,
    ),
    r'rightAmount': PropertySchema(
      id: 8,
      name: r'rightAmount',
      type: IsarType.string,
    ),
    r'rightEnabled': PropertySchema(
      id: 9,
      name: r'rightEnabled',
      type: IsarType.bool,
    ),
    r'rightLength': PropertySchema(
      id: 10,
      name: r'rightLength',
      type: IsarType.string,
    ),
    r'rightWidth': PropertySchema(
      id: 11,
      name: r'rightWidth',
      type: IsarType.string,
      enumMap: _ExpanderOptionDBrightWidthEnumValueMap,
    ),
    r'topAmount': PropertySchema(
      id: 12,
      name: r'topAmount',
      type: IsarType.string,
    ),
    r'topEnabled': PropertySchema(
      id: 13,
      name: r'topEnabled',
      type: IsarType.bool,
    ),
    r'topLength': PropertySchema(
      id: 14,
      name: r'topLength',
      type: IsarType.string,
    ),
    r'topWidth': PropertySchema(
      id: 15,
      name: r'topWidth',
      type: IsarType.string,
      enumMap: _ExpanderOptionDBtopWidthEnumValueMap,
    )
  },
  estimateSize: _expanderOptionDBEstimateSize,
  serialize: _expanderOptionDBSerialize,
  deserialize: _expanderOptionDBDeserialize,
  deserializeProp: _expanderOptionDBDeserializeProp,
);

int _expanderOptionDBEstimateSize(
  ExpanderOptionDB object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.bottomAmount.length * 3;
  bytesCount += 3 + object.bottomLength.length * 3;
  bytesCount += 3 + object.bottomWidth.name.length * 3;
  bytesCount += 3 + object.leftAmount.length * 3;
  bytesCount += 3 + object.leftLength.length * 3;
  bytesCount += 3 + object.leftWidth.name.length * 3;
  bytesCount += 3 + object.rightAmount.length * 3;
  bytesCount += 3 + object.rightLength.length * 3;
  bytesCount += 3 + object.rightWidth.name.length * 3;
  bytesCount += 3 + object.topAmount.length * 3;
  bytesCount += 3 + object.topLength.length * 3;
  bytesCount += 3 + object.topWidth.name.length * 3;
  return bytesCount;
}

void _expanderOptionDBSerialize(
  ExpanderOptionDB object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.bottomAmount);
  writer.writeBool(offsets[1], object.bottomEnabled);
  writer.writeString(offsets[2], object.bottomLength);
  writer.writeString(offsets[3], object.bottomWidth.name);
  writer.writeString(offsets[4], object.leftAmount);
  writer.writeBool(offsets[5], object.leftEnabled);
  writer.writeString(offsets[6], object.leftLength);
  writer.writeString(offsets[7], object.leftWidth.name);
  writer.writeString(offsets[8], object.rightAmount);
  writer.writeBool(offsets[9], object.rightEnabled);
  writer.writeString(offsets[10], object.rightLength);
  writer.writeString(offsets[11], object.rightWidth.name);
  writer.writeString(offsets[12], object.topAmount);
  writer.writeBool(offsets[13], object.topEnabled);
  writer.writeString(offsets[14], object.topLength);
  writer.writeString(offsets[15], object.topWidth.name);
}

ExpanderOptionDB _expanderOptionDBDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ExpanderOptionDB();
  object.bottomAmount = reader.readString(offsets[0]);
  object.bottomEnabled = reader.readBool(offsets[1]);
  object.bottomLength = reader.readString(offsets[2]);
  object.bottomWidth = _ExpanderOptionDBbottomWidthValueEnumMap[
          reader.readStringOrNull(offsets[3])] ??
      ExpanderWidth.none;
  object.leftAmount = reader.readString(offsets[4]);
  object.leftEnabled = reader.readBool(offsets[5]);
  object.leftLength = reader.readString(offsets[6]);
  object.leftWidth = _ExpanderOptionDBleftWidthValueEnumMap[
          reader.readStringOrNull(offsets[7])] ??
      ExpanderWidth.none;
  object.rightAmount = reader.readString(offsets[8]);
  object.rightEnabled = reader.readBool(offsets[9]);
  object.rightLength = reader.readString(offsets[10]);
  object.rightWidth = _ExpanderOptionDBrightWidthValueEnumMap[
          reader.readStringOrNull(offsets[11])] ??
      ExpanderWidth.none;
  object.topAmount = reader.readString(offsets[12]);
  object.topEnabled = reader.readBool(offsets[13]);
  object.topLength = reader.readString(offsets[14]);
  object.topWidth = _ExpanderOptionDBtopWidthValueEnumMap[
          reader.readStringOrNull(offsets[15])] ??
      ExpanderWidth.none;
  return object;
}

P _expanderOptionDBDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readBool(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (_ExpanderOptionDBbottomWidthValueEnumMap[
              reader.readStringOrNull(offset)] ??
          ExpanderWidth.none) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readBool(offset)) as P;
    case 6:
      return (reader.readString(offset)) as P;
    case 7:
      return (_ExpanderOptionDBleftWidthValueEnumMap[
              reader.readStringOrNull(offset)] ??
          ExpanderWidth.none) as P;
    case 8:
      return (reader.readString(offset)) as P;
    case 9:
      return (reader.readBool(offset)) as P;
    case 10:
      return (reader.readString(offset)) as P;
    case 11:
      return (_ExpanderOptionDBrightWidthValueEnumMap[
              reader.readStringOrNull(offset)] ??
          ExpanderWidth.none) as P;
    case 12:
      return (reader.readString(offset)) as P;
    case 13:
      return (reader.readBool(offset)) as P;
    case 14:
      return (reader.readString(offset)) as P;
    case 15:
      return (_ExpanderOptionDBtopWidthValueEnumMap[
              reader.readStringOrNull(offset)] ??
          ExpanderWidth.none) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _ExpanderOptionDBbottomWidthEnumValueMap = {
  r'none': r'none',
  r'w20': r'w20',
  r'w35': r'w35',
  r'w40': r'w40',
  r'w60': r'w60',
  r'w100': r'w100',
};
const _ExpanderOptionDBbottomWidthValueEnumMap = {
  r'none': ExpanderWidth.none,
  r'w20': ExpanderWidth.w20,
  r'w35': ExpanderWidth.w35,
  r'w40': ExpanderWidth.w40,
  r'w60': ExpanderWidth.w60,
  r'w100': ExpanderWidth.w100,
};
const _ExpanderOptionDBleftWidthEnumValueMap = {
  r'none': r'none',
  r'w20': r'w20',
  r'w35': r'w35',
  r'w40': r'w40',
  r'w60': r'w60',
  r'w100': r'w100',
};
const _ExpanderOptionDBleftWidthValueEnumMap = {
  r'none': ExpanderWidth.none,
  r'w20': ExpanderWidth.w20,
  r'w35': ExpanderWidth.w35,
  r'w40': ExpanderWidth.w40,
  r'w60': ExpanderWidth.w60,
  r'w100': ExpanderWidth.w100,
};
const _ExpanderOptionDBrightWidthEnumValueMap = {
  r'none': r'none',
  r'w20': r'w20',
  r'w35': r'w35',
  r'w40': r'w40',
  r'w60': r'w60',
  r'w100': r'w100',
};
const _ExpanderOptionDBrightWidthValueEnumMap = {
  r'none': ExpanderWidth.none,
  r'w20': ExpanderWidth.w20,
  r'w35': ExpanderWidth.w35,
  r'w40': ExpanderWidth.w40,
  r'w60': ExpanderWidth.w60,
  r'w100': ExpanderWidth.w100,
};
const _ExpanderOptionDBtopWidthEnumValueMap = {
  r'none': r'none',
  r'w20': r'w20',
  r'w35': r'w35',
  r'w40': r'w40',
  r'w60': r'w60',
  r'w100': r'w100',
};
const _ExpanderOptionDBtopWidthValueEnumMap = {
  r'none': ExpanderWidth.none,
  r'w20': ExpanderWidth.w20,
  r'w35': ExpanderWidth.w35,
  r'w40': ExpanderWidth.w40,
  r'w60': ExpanderWidth.w60,
  r'w100': ExpanderWidth.w100,
};

extension ExpanderOptionDBQueryFilter
    on QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QFilterCondition> {
  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      bottomAmountEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bottomAmount',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      bottomAmountGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'bottomAmount',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      bottomAmountLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'bottomAmount',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      bottomAmountBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'bottomAmount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      bottomAmountStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'bottomAmount',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      bottomAmountEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'bottomAmount',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      bottomAmountContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'bottomAmount',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      bottomAmountMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'bottomAmount',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      bottomAmountIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bottomAmount',
        value: '',
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      bottomAmountIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'bottomAmount',
        value: '',
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      bottomEnabledEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bottomEnabled',
        value: value,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      bottomLengthEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bottomLength',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      bottomLengthGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'bottomLength',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      bottomLengthLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'bottomLength',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      bottomLengthBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'bottomLength',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      bottomLengthStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'bottomLength',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      bottomLengthEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'bottomLength',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      bottomLengthContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'bottomLength',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      bottomLengthMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'bottomLength',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      bottomLengthIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bottomLength',
        value: '',
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      bottomLengthIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'bottomLength',
        value: '',
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      bottomWidthEqualTo(
    ExpanderWidth value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bottomWidth',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      bottomWidthGreaterThan(
    ExpanderWidth value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'bottomWidth',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      bottomWidthLessThan(
    ExpanderWidth value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'bottomWidth',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      bottomWidthBetween(
    ExpanderWidth lower,
    ExpanderWidth upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'bottomWidth',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      bottomWidthStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'bottomWidth',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      bottomWidthEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'bottomWidth',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      bottomWidthContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'bottomWidth',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      bottomWidthMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'bottomWidth',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      bottomWidthIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bottomWidth',
        value: '',
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      bottomWidthIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'bottomWidth',
        value: '',
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      leftAmountEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'leftAmount',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      leftAmountGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'leftAmount',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      leftAmountLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'leftAmount',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      leftAmountBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'leftAmount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      leftAmountStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'leftAmount',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      leftAmountEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'leftAmount',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      leftAmountContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'leftAmount',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      leftAmountMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'leftAmount',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      leftAmountIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'leftAmount',
        value: '',
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      leftAmountIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'leftAmount',
        value: '',
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      leftEnabledEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'leftEnabled',
        value: value,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      leftLengthEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'leftLength',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      leftLengthGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'leftLength',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      leftLengthLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'leftLength',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      leftLengthBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'leftLength',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      leftLengthStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'leftLength',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      leftLengthEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'leftLength',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      leftLengthContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'leftLength',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      leftLengthMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'leftLength',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      leftLengthIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'leftLength',
        value: '',
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      leftLengthIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'leftLength',
        value: '',
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      leftWidthEqualTo(
    ExpanderWidth value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'leftWidth',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      leftWidthGreaterThan(
    ExpanderWidth value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'leftWidth',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      leftWidthLessThan(
    ExpanderWidth value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'leftWidth',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      leftWidthBetween(
    ExpanderWidth lower,
    ExpanderWidth upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'leftWidth',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      leftWidthStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'leftWidth',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      leftWidthEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'leftWidth',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      leftWidthContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'leftWidth',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      leftWidthMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'leftWidth',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      leftWidthIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'leftWidth',
        value: '',
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      leftWidthIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'leftWidth',
        value: '',
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      rightAmountEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rightAmount',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      rightAmountGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'rightAmount',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      rightAmountLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'rightAmount',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      rightAmountBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'rightAmount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      rightAmountStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'rightAmount',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      rightAmountEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'rightAmount',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      rightAmountContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'rightAmount',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      rightAmountMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'rightAmount',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      rightAmountIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rightAmount',
        value: '',
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      rightAmountIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'rightAmount',
        value: '',
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      rightEnabledEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rightEnabled',
        value: value,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      rightLengthEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rightLength',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      rightLengthGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'rightLength',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      rightLengthLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'rightLength',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      rightLengthBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'rightLength',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      rightLengthStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'rightLength',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      rightLengthEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'rightLength',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      rightLengthContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'rightLength',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      rightLengthMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'rightLength',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      rightLengthIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rightLength',
        value: '',
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      rightLengthIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'rightLength',
        value: '',
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      rightWidthEqualTo(
    ExpanderWidth value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rightWidth',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      rightWidthGreaterThan(
    ExpanderWidth value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'rightWidth',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      rightWidthLessThan(
    ExpanderWidth value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'rightWidth',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      rightWidthBetween(
    ExpanderWidth lower,
    ExpanderWidth upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'rightWidth',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      rightWidthStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'rightWidth',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      rightWidthEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'rightWidth',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      rightWidthContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'rightWidth',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      rightWidthMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'rightWidth',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      rightWidthIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rightWidth',
        value: '',
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      rightWidthIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'rightWidth',
        value: '',
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      topAmountEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'topAmount',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      topAmountGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'topAmount',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      topAmountLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'topAmount',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      topAmountBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'topAmount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      topAmountStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'topAmount',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      topAmountEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'topAmount',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      topAmountContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'topAmount',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      topAmountMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'topAmount',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      topAmountIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'topAmount',
        value: '',
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      topAmountIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'topAmount',
        value: '',
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      topEnabledEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'topEnabled',
        value: value,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      topLengthEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'topLength',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      topLengthGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'topLength',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      topLengthLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'topLength',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      topLengthBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'topLength',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      topLengthStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'topLength',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      topLengthEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'topLength',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      topLengthContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'topLength',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      topLengthMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'topLength',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      topLengthIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'topLength',
        value: '',
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      topLengthIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'topLength',
        value: '',
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      topWidthEqualTo(
    ExpanderWidth value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'topWidth',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      topWidthGreaterThan(
    ExpanderWidth value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'topWidth',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      topWidthLessThan(
    ExpanderWidth value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'topWidth',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      topWidthBetween(
    ExpanderWidth lower,
    ExpanderWidth upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'topWidth',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      topWidthStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'topWidth',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      topWidthEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'topWidth',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      topWidthContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'topWidth',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      topWidthMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'topWidth',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      topWidthIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'topWidth',
        value: '',
      ));
    });
  }

  QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QAfterFilterCondition>
      topWidthIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'topWidth',
        value: '',
      ));
    });
  }
}

extension ExpanderOptionDBQueryObject
    on QueryBuilder<ExpanderOptionDB, ExpanderOptionDB, QFilterCondition> {}
