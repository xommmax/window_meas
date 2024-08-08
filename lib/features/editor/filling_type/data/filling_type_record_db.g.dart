// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filling_type_record_db.dart';

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const FillingTypeRecordDBSchema = Schema(
  name: r'FillingTypeRecordDB',
  id: 2242324820736209481,
  properties: {
    r'fillingType': PropertySchema(
      id: 0,
      name: r'fillingType',
      type: IsarType.string,
      enumMap: _FillingTypeRecordDBfillingTypeEnumValueMap,
    ),
    r'mosquito': PropertySchema(
      id: 1,
      name: r'mosquito',
      type: IsarType.bool,
    ),
    r'polygon': PropertySchema(
      id: 2,
      name: r'polygon',
      type: IsarType.object,
      target: r'PolygonDB',
    ),
    r'sateen': PropertySchema(
      id: 3,
      name: r'sateen',
      type: IsarType.bool,
    )
  },
  estimateSize: _fillingTypeRecordDBEstimateSize,
  serialize: _fillingTypeRecordDBSerialize,
  deserialize: _fillingTypeRecordDBDeserialize,
  deserializeProp: _fillingTypeRecordDBDeserializeProp,
);

int _fillingTypeRecordDBEstimateSize(
  FillingTypeRecordDB object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.fillingType.name.length * 3;
  bytesCount += 3 +
      PolygonDBSchema.estimateSize(
          object.polygon, allOffsets[PolygonDB]!, allOffsets);
  return bytesCount;
}

void _fillingTypeRecordDBSerialize(
  FillingTypeRecordDB object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.fillingType.name);
  writer.writeBool(offsets[1], object.mosquito);
  writer.writeObject<PolygonDB>(
    offsets[2],
    allOffsets,
    PolygonDBSchema.serialize,
    object.polygon,
  );
  writer.writeBool(offsets[3], object.sateen);
}

FillingTypeRecordDB _fillingTypeRecordDBDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = FillingTypeRecordDB();
  object.fillingType = _FillingTypeRecordDBfillingTypeValueEnumMap[
          reader.readStringOrNull(offsets[0])] ??
      FillingType.glass;
  object.mosquito = reader.readBool(offsets[1]);
  object.polygon = reader.readObjectOrNull<PolygonDB>(
        offsets[2],
        PolygonDBSchema.deserialize,
        allOffsets,
      ) ??
      PolygonDB();
  object.sateen = reader.readBool(offsets[3]);
  return object;
}

P _fillingTypeRecordDBDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (_FillingTypeRecordDBfillingTypeValueEnumMap[
              reader.readStringOrNull(offset)] ??
          FillingType.glass) as P;
    case 1:
      return (reader.readBool(offset)) as P;
    case 2:
      return (reader.readObjectOrNull<PolygonDB>(
            offset,
            PolygonDBSchema.deserialize,
            allOffsets,
          ) ??
          PolygonDB()) as P;
    case 3:
      return (reader.readBool(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _FillingTypeRecordDBfillingTypeEnumValueMap = {
  r'glass': r'glass',
  r'panel': r'panel',
  r'tinting': r'tinting',
};
const _FillingTypeRecordDBfillingTypeValueEnumMap = {
  r'glass': FillingType.glass,
  r'panel': FillingType.panel,
  r'tinting': FillingType.tinting,
};

extension FillingTypeRecordDBQueryFilter on QueryBuilder<FillingTypeRecordDB,
    FillingTypeRecordDB, QFilterCondition> {
  QueryBuilder<FillingTypeRecordDB, FillingTypeRecordDB, QAfterFilterCondition>
      fillingTypeEqualTo(
    FillingType value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fillingType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FillingTypeRecordDB, FillingTypeRecordDB, QAfterFilterCondition>
      fillingTypeGreaterThan(
    FillingType value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fillingType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FillingTypeRecordDB, FillingTypeRecordDB, QAfterFilterCondition>
      fillingTypeLessThan(
    FillingType value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fillingType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FillingTypeRecordDB, FillingTypeRecordDB, QAfterFilterCondition>
      fillingTypeBetween(
    FillingType lower,
    FillingType upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fillingType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FillingTypeRecordDB, FillingTypeRecordDB, QAfterFilterCondition>
      fillingTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'fillingType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FillingTypeRecordDB, FillingTypeRecordDB, QAfterFilterCondition>
      fillingTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'fillingType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FillingTypeRecordDB, FillingTypeRecordDB, QAfterFilterCondition>
      fillingTypeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'fillingType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FillingTypeRecordDB, FillingTypeRecordDB, QAfterFilterCondition>
      fillingTypeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'fillingType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FillingTypeRecordDB, FillingTypeRecordDB, QAfterFilterCondition>
      fillingTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fillingType',
        value: '',
      ));
    });
  }

  QueryBuilder<FillingTypeRecordDB, FillingTypeRecordDB, QAfterFilterCondition>
      fillingTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'fillingType',
        value: '',
      ));
    });
  }

  QueryBuilder<FillingTypeRecordDB, FillingTypeRecordDB, QAfterFilterCondition>
      mosquitoEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mosquito',
        value: value,
      ));
    });
  }

  QueryBuilder<FillingTypeRecordDB, FillingTypeRecordDB, QAfterFilterCondition>
      sateenEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sateen',
        value: value,
      ));
    });
  }
}

extension FillingTypeRecordDBQueryObject on QueryBuilder<FillingTypeRecordDB,
    FillingTypeRecordDB, QFilterCondition> {
  QueryBuilder<FillingTypeRecordDB, FillingTypeRecordDB, QAfterFilterCondition>
      polygon(FilterQuery<PolygonDB> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'polygon');
    });
  }
}
