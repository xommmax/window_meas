// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_db.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetSettingsDBCollection on Isar {
  IsarCollection<SettingsDB> get settingsDBs => this.collection();
}

const SettingsDBSchema = CollectionSchema(
  name: r'SettingsDB',
  id: 7935754647244593775,
  properties: {
    r'isAdmin': PropertySchema(
      id: 0,
      name: r'isAdmin',
      type: IsarType.bool,
    ),
    r'isAdminModeEnabled': PropertySchema(
      id: 1,
      name: r'isAdminModeEnabled',
      type: IsarType.bool,
    ),
    r'printEmptyFields': PropertySchema(
      id: 2,
      name: r'printEmptyFields',
      type: IsarType.bool,
    ),
    r'userName': PropertySchema(
      id: 3,
      name: r'userName',
      type: IsarType.string,
    )
  },
  estimateSize: _settingsDBEstimateSize,
  serialize: _settingsDBSerialize,
  deserialize: _settingsDBDeserialize,
  deserializeProp: _settingsDBDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _settingsDBGetId,
  getLinks: _settingsDBGetLinks,
  attach: _settingsDBAttach,
  version: '3.1.0+1',
);

int _settingsDBEstimateSize(
  SettingsDB object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.userName.length * 3;
  return bytesCount;
}

void _settingsDBSerialize(
  SettingsDB object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeBool(offsets[0], object.isAdmin);
  writer.writeBool(offsets[1], object.isAdminModeEnabled);
  writer.writeBool(offsets[2], object.printEmptyFields);
  writer.writeString(offsets[3], object.userName);
}

SettingsDB _settingsDBDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = SettingsDB();
  object.id = id;
  object.isAdmin = reader.readBool(offsets[0]);
  object.isAdminModeEnabled = reader.readBool(offsets[1]);
  object.printEmptyFields = reader.readBool(offsets[2]);
  object.userName = reader.readString(offsets[3]);
  return object;
}

P _settingsDBDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readBool(offset)) as P;
    case 1:
      return (reader.readBool(offset)) as P;
    case 2:
      return (reader.readBool(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _settingsDBGetId(SettingsDB object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _settingsDBGetLinks(SettingsDB object) {
  return [];
}

void _settingsDBAttach(IsarCollection<dynamic> col, Id id, SettingsDB object) {
  object.id = id;
}

extension SettingsDBQueryWhereSort
    on QueryBuilder<SettingsDB, SettingsDB, QWhere> {
  QueryBuilder<SettingsDB, SettingsDB, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension SettingsDBQueryWhere
    on QueryBuilder<SettingsDB, SettingsDB, QWhereClause> {
  QueryBuilder<SettingsDB, SettingsDB, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension SettingsDBQueryFilter
    on QueryBuilder<SettingsDB, SettingsDB, QFilterCondition> {
  QueryBuilder<SettingsDB, SettingsDB, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterFilterCondition> isAdminEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isAdmin',
        value: value,
      ));
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterFilterCondition>
      isAdminModeEnabledEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isAdminModeEnabled',
        value: value,
      ));
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterFilterCondition>
      printEmptyFieldsEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'printEmptyFields',
        value: value,
      ));
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterFilterCondition> userNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'userName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterFilterCondition>
      userNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'userName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterFilterCondition> userNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'userName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterFilterCondition> userNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'userName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterFilterCondition>
      userNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'userName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterFilterCondition> userNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'userName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterFilterCondition> userNameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'userName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterFilterCondition> userNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'userName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterFilterCondition>
      userNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'userName',
        value: '',
      ));
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterFilterCondition>
      userNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'userName',
        value: '',
      ));
    });
  }
}

extension SettingsDBQueryObject
    on QueryBuilder<SettingsDB, SettingsDB, QFilterCondition> {}

extension SettingsDBQueryLinks
    on QueryBuilder<SettingsDB, SettingsDB, QFilterCondition> {}

extension SettingsDBQuerySortBy
    on QueryBuilder<SettingsDB, SettingsDB, QSortBy> {
  QueryBuilder<SettingsDB, SettingsDB, QAfterSortBy> sortByIsAdmin() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAdmin', Sort.asc);
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterSortBy> sortByIsAdminDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAdmin', Sort.desc);
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterSortBy>
      sortByIsAdminModeEnabled() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAdminModeEnabled', Sort.asc);
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterSortBy>
      sortByIsAdminModeEnabledDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAdminModeEnabled', Sort.desc);
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterSortBy> sortByPrintEmptyFields() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'printEmptyFields', Sort.asc);
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterSortBy>
      sortByPrintEmptyFieldsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'printEmptyFields', Sort.desc);
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterSortBy> sortByUserName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userName', Sort.asc);
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterSortBy> sortByUserNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userName', Sort.desc);
    });
  }
}

extension SettingsDBQuerySortThenBy
    on QueryBuilder<SettingsDB, SettingsDB, QSortThenBy> {
  QueryBuilder<SettingsDB, SettingsDB, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterSortBy> thenByIsAdmin() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAdmin', Sort.asc);
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterSortBy> thenByIsAdminDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAdmin', Sort.desc);
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterSortBy>
      thenByIsAdminModeEnabled() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAdminModeEnabled', Sort.asc);
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterSortBy>
      thenByIsAdminModeEnabledDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAdminModeEnabled', Sort.desc);
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterSortBy> thenByPrintEmptyFields() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'printEmptyFields', Sort.asc);
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterSortBy>
      thenByPrintEmptyFieldsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'printEmptyFields', Sort.desc);
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterSortBy> thenByUserName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userName', Sort.asc);
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterSortBy> thenByUserNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userName', Sort.desc);
    });
  }
}

extension SettingsDBQueryWhereDistinct
    on QueryBuilder<SettingsDB, SettingsDB, QDistinct> {
  QueryBuilder<SettingsDB, SettingsDB, QDistinct> distinctByIsAdmin() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isAdmin');
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QDistinct>
      distinctByIsAdminModeEnabled() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isAdminModeEnabled');
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QDistinct> distinctByPrintEmptyFields() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'printEmptyFields');
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QDistinct> distinctByUserName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'userName', caseSensitive: caseSensitive);
    });
  }
}

extension SettingsDBQueryProperty
    on QueryBuilder<SettingsDB, SettingsDB, QQueryProperty> {
  QueryBuilder<SettingsDB, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<SettingsDB, bool, QQueryOperations> isAdminProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isAdmin');
    });
  }

  QueryBuilder<SettingsDB, bool, QQueryOperations>
      isAdminModeEnabledProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isAdminModeEnabled');
    });
  }

  QueryBuilder<SettingsDB, bool, QQueryOperations> printEmptyFieldsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'printEmptyFields');
    });
  }

  QueryBuilder<SettingsDB, String, QQueryOperations> userNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'userName');
    });
  }
}
