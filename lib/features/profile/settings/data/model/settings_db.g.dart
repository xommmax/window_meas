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
    r'adminsList': PropertySchema(
      id: 0,
      name: r'adminsList',
      type: IsarType.stringList,
    ),
    r'appPassword': PropertySchema(
      id: 1,
      name: r'appPassword',
      type: IsarType.string,
    ),
    r'isAdmin': PropertySchema(
      id: 2,
      name: r'isAdmin',
      type: IsarType.bool,
    ),
    r'isAdminModeEnabled': PropertySchema(
      id: 3,
      name: r'isAdminModeEnabled',
      type: IsarType.bool,
    ),
    r'isPasswordEntered': PropertySchema(
      id: 4,
      name: r'isPasswordEntered',
      type: IsarType.bool,
    ),
    r'kommoListId': PropertySchema(
      id: 5,
      name: r'kommoListId',
      type: IsarType.long,
    ),
    r'kommoSubdomain': PropertySchema(
      id: 6,
      name: r'kommoSubdomain',
      type: IsarType.string,
    ),
    r'kommoToken': PropertySchema(
      id: 7,
      name: r'kommoToken',
      type: IsarType.string,
    ),
    r'printEmptyFields': PropertySchema(
      id: 8,
      name: r'printEmptyFields',
      type: IsarType.bool,
    ),
    r'userName': PropertySchema(
      id: 9,
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
  {
    final list = object.adminsList;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += value.length * 3;
        }
      }
    }
  }
  {
    final value = object.appPassword;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.kommoSubdomain;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.kommoToken;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.userName.length * 3;
  return bytesCount;
}

void _settingsDBSerialize(
  SettingsDB object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeStringList(offsets[0], object.adminsList);
  writer.writeString(offsets[1], object.appPassword);
  writer.writeBool(offsets[2], object.isAdmin);
  writer.writeBool(offsets[3], object.isAdminModeEnabled);
  writer.writeBool(offsets[4], object.isPasswordEntered);
  writer.writeLong(offsets[5], object.kommoListId);
  writer.writeString(offsets[6], object.kommoSubdomain);
  writer.writeString(offsets[7], object.kommoToken);
  writer.writeBool(offsets[8], object.printEmptyFields);
  writer.writeString(offsets[9], object.userName);
}

SettingsDB _settingsDBDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = SettingsDB();
  object.adminsList = reader.readStringList(offsets[0]);
  object.appPassword = reader.readStringOrNull(offsets[1]);
  object.id = id;
  object.isAdmin = reader.readBool(offsets[2]);
  object.isAdminModeEnabled = reader.readBool(offsets[3]);
  object.isPasswordEntered = reader.readBool(offsets[4]);
  object.kommoListId = reader.readLongOrNull(offsets[5]);
  object.kommoSubdomain = reader.readStringOrNull(offsets[6]);
  object.kommoToken = reader.readStringOrNull(offsets[7]);
  object.printEmptyFields = reader.readBool(offsets[8]);
  object.userName = reader.readString(offsets[9]);
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
      return (reader.readStringList(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readBool(offset)) as P;
    case 3:
      return (reader.readBool(offset)) as P;
    case 4:
      return (reader.readBool(offset)) as P;
    case 5:
      return (reader.readLongOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readBool(offset)) as P;
    case 9:
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
  QueryBuilder<SettingsDB, SettingsDB, QAfterFilterCondition>
      adminsListIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'adminsList',
      ));
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterFilterCondition>
      adminsListIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'adminsList',
      ));
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterFilterCondition>
      adminsListElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'adminsList',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterFilterCondition>
      adminsListElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'adminsList',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterFilterCondition>
      adminsListElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'adminsList',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterFilterCondition>
      adminsListElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'adminsList',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterFilterCondition>
      adminsListElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'adminsList',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterFilterCondition>
      adminsListElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'adminsList',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterFilterCondition>
      adminsListElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'adminsList',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterFilterCondition>
      adminsListElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'adminsList',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterFilterCondition>
      adminsListElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'adminsList',
        value: '',
      ));
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterFilterCondition>
      adminsListElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'adminsList',
        value: '',
      ));
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterFilterCondition>
      adminsListLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'adminsList',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterFilterCondition>
      adminsListIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'adminsList',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterFilterCondition>
      adminsListIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'adminsList',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterFilterCondition>
      adminsListLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'adminsList',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterFilterCondition>
      adminsListLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'adminsList',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterFilterCondition>
      adminsListLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'adminsList',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterFilterCondition>
      appPasswordIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'appPassword',
      ));
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterFilterCondition>
      appPasswordIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'appPassword',
      ));
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterFilterCondition>
      appPasswordEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'appPassword',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterFilterCondition>
      appPasswordGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'appPassword',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterFilterCondition>
      appPasswordLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'appPassword',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterFilterCondition>
      appPasswordBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'appPassword',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterFilterCondition>
      appPasswordStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'appPassword',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterFilterCondition>
      appPasswordEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'appPassword',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterFilterCondition>
      appPasswordContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'appPassword',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterFilterCondition>
      appPasswordMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'appPassword',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterFilterCondition>
      appPasswordIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'appPassword',
        value: '',
      ));
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterFilterCondition>
      appPasswordIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'appPassword',
        value: '',
      ));
    });
  }

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
      isPasswordEnteredEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isPasswordEntered',
        value: value,
      ));
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterFilterCondition>
      kommoListIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'kommoListId',
      ));
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterFilterCondition>
      kommoListIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'kommoListId',
      ));
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterFilterCondition>
      kommoListIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'kommoListId',
        value: value,
      ));
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterFilterCondition>
      kommoListIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'kommoListId',
        value: value,
      ));
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterFilterCondition>
      kommoListIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'kommoListId',
        value: value,
      ));
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterFilterCondition>
      kommoListIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'kommoListId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterFilterCondition>
      kommoSubdomainIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'kommoSubdomain',
      ));
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterFilterCondition>
      kommoSubdomainIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'kommoSubdomain',
      ));
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterFilterCondition>
      kommoSubdomainEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'kommoSubdomain',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterFilterCondition>
      kommoSubdomainGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'kommoSubdomain',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterFilterCondition>
      kommoSubdomainLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'kommoSubdomain',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterFilterCondition>
      kommoSubdomainBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'kommoSubdomain',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterFilterCondition>
      kommoSubdomainStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'kommoSubdomain',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterFilterCondition>
      kommoSubdomainEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'kommoSubdomain',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterFilterCondition>
      kommoSubdomainContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'kommoSubdomain',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterFilterCondition>
      kommoSubdomainMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'kommoSubdomain',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterFilterCondition>
      kommoSubdomainIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'kommoSubdomain',
        value: '',
      ));
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterFilterCondition>
      kommoSubdomainIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'kommoSubdomain',
        value: '',
      ));
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterFilterCondition>
      kommoTokenIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'kommoToken',
      ));
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterFilterCondition>
      kommoTokenIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'kommoToken',
      ));
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterFilterCondition> kommoTokenEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'kommoToken',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterFilterCondition>
      kommoTokenGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'kommoToken',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterFilterCondition>
      kommoTokenLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'kommoToken',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterFilterCondition> kommoTokenBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'kommoToken',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterFilterCondition>
      kommoTokenStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'kommoToken',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterFilterCondition>
      kommoTokenEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'kommoToken',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterFilterCondition>
      kommoTokenContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'kommoToken',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterFilterCondition> kommoTokenMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'kommoToken',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterFilterCondition>
      kommoTokenIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'kommoToken',
        value: '',
      ));
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterFilterCondition>
      kommoTokenIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'kommoToken',
        value: '',
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
  QueryBuilder<SettingsDB, SettingsDB, QAfterSortBy> sortByAppPassword() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'appPassword', Sort.asc);
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterSortBy> sortByAppPasswordDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'appPassword', Sort.desc);
    });
  }

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

  QueryBuilder<SettingsDB, SettingsDB, QAfterSortBy> sortByIsPasswordEntered() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isPasswordEntered', Sort.asc);
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterSortBy>
      sortByIsPasswordEnteredDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isPasswordEntered', Sort.desc);
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterSortBy> sortByKommoListId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kommoListId', Sort.asc);
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterSortBy> sortByKommoListIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kommoListId', Sort.desc);
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterSortBy> sortByKommoSubdomain() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kommoSubdomain', Sort.asc);
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterSortBy>
      sortByKommoSubdomainDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kommoSubdomain', Sort.desc);
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterSortBy> sortByKommoToken() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kommoToken', Sort.asc);
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterSortBy> sortByKommoTokenDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kommoToken', Sort.desc);
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
  QueryBuilder<SettingsDB, SettingsDB, QAfterSortBy> thenByAppPassword() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'appPassword', Sort.asc);
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterSortBy> thenByAppPasswordDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'appPassword', Sort.desc);
    });
  }

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

  QueryBuilder<SettingsDB, SettingsDB, QAfterSortBy> thenByIsPasswordEntered() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isPasswordEntered', Sort.asc);
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterSortBy>
      thenByIsPasswordEnteredDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isPasswordEntered', Sort.desc);
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterSortBy> thenByKommoListId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kommoListId', Sort.asc);
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterSortBy> thenByKommoListIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kommoListId', Sort.desc);
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterSortBy> thenByKommoSubdomain() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kommoSubdomain', Sort.asc);
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterSortBy>
      thenByKommoSubdomainDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kommoSubdomain', Sort.desc);
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterSortBy> thenByKommoToken() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kommoToken', Sort.asc);
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QAfterSortBy> thenByKommoTokenDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kommoToken', Sort.desc);
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
  QueryBuilder<SettingsDB, SettingsDB, QDistinct> distinctByAdminsList() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'adminsList');
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QDistinct> distinctByAppPassword(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'appPassword', caseSensitive: caseSensitive);
    });
  }

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

  QueryBuilder<SettingsDB, SettingsDB, QDistinct>
      distinctByIsPasswordEntered() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isPasswordEntered');
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QDistinct> distinctByKommoListId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'kommoListId');
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QDistinct> distinctByKommoSubdomain(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'kommoSubdomain',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SettingsDB, SettingsDB, QDistinct> distinctByKommoToken(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'kommoToken', caseSensitive: caseSensitive);
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

  QueryBuilder<SettingsDB, List<String>?, QQueryOperations>
      adminsListProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'adminsList');
    });
  }

  QueryBuilder<SettingsDB, String?, QQueryOperations> appPasswordProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'appPassword');
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

  QueryBuilder<SettingsDB, bool, QQueryOperations> isPasswordEnteredProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isPasswordEntered');
    });
  }

  QueryBuilder<SettingsDB, int?, QQueryOperations> kommoListIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'kommoListId');
    });
  }

  QueryBuilder<SettingsDB, String?, QQueryOperations> kommoSubdomainProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'kommoSubdomain');
    });
  }

  QueryBuilder<SettingsDB, String?, QQueryOperations> kommoTokenProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'kommoToken');
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
