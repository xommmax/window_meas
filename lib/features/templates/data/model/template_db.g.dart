// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'template_db.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetTemplateDBCollection on Isar {
  IsarCollection<TemplateDB> get templateDBs => this.collection();
}

const TemplateDBSchema = CollectionSchema(
  name: r'TemplateDB',
  id: -6766525083359949950,
  properties: {
    r'date': PropertySchema(
      id: 0,
      name: r'date',
      type: IsarType.dateTime,
    ),
    r'lines': PropertySchema(
      id: 1,
      name: r'lines',
      type: IsarType.objectList,
      target: r'LineDB',
    ),
    r'segments': PropertySchema(
      id: 2,
      name: r'segments',
      type: IsarType.objectList,
      target: r'SegmentDB',
    )
  },
  estimateSize: _templateDBEstimateSize,
  serialize: _templateDBSerialize,
  deserialize: _templateDBDeserialize,
  deserializeProp: _templateDBDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {r'LineDB': LineDBSchema, r'SegmentDB': SegmentDBSchema},
  getId: _templateDBGetId,
  getLinks: _templateDBGetLinks,
  attach: _templateDBAttach,
  version: '3.1.0+1',
);

int _templateDBEstimateSize(
  TemplateDB object,
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
  bytesCount += 3 + object.segments.length * 3;
  {
    final offsets = allOffsets[SegmentDB]!;
    for (var i = 0; i < object.segments.length; i++) {
      final value = object.segments[i];
      bytesCount += SegmentDBSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  return bytesCount;
}

void _templateDBSerialize(
  TemplateDB object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.date);
  writer.writeObjectList<LineDB>(
    offsets[1],
    allOffsets,
    LineDBSchema.serialize,
    object.lines,
  );
  writer.writeObjectList<SegmentDB>(
    offsets[2],
    allOffsets,
    SegmentDBSchema.serialize,
    object.segments,
  );
}

TemplateDB _templateDBDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = TemplateDB();
  object.date = reader.readDateTime(offsets[0]);
  object.id = id;
  object.lines = reader.readObjectList<LineDB>(
        offsets[1],
        LineDBSchema.deserialize,
        allOffsets,
        LineDB(),
      ) ??
      [];
  object.segments = reader.readObjectList<SegmentDB>(
        offsets[2],
        SegmentDBSchema.deserialize,
        allOffsets,
        SegmentDB(),
      ) ??
      [];
  return object;
}

P _templateDBDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTime(offset)) as P;
    case 1:
      return (reader.readObjectList<LineDB>(
            offset,
            LineDBSchema.deserialize,
            allOffsets,
            LineDB(),
          ) ??
          []) as P;
    case 2:
      return (reader.readObjectList<SegmentDB>(
            offset,
            SegmentDBSchema.deserialize,
            allOffsets,
            SegmentDB(),
          ) ??
          []) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _templateDBGetId(TemplateDB object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _templateDBGetLinks(TemplateDB object) {
  return [];
}

void _templateDBAttach(IsarCollection<dynamic> col, Id id, TemplateDB object) {
  object.id = id;
}

extension TemplateDBQueryWhereSort
    on QueryBuilder<TemplateDB, TemplateDB, QWhere> {
  QueryBuilder<TemplateDB, TemplateDB, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension TemplateDBQueryWhere
    on QueryBuilder<TemplateDB, TemplateDB, QWhereClause> {
  QueryBuilder<TemplateDB, TemplateDB, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<TemplateDB, TemplateDB, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<TemplateDB, TemplateDB, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<TemplateDB, TemplateDB, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<TemplateDB, TemplateDB, QAfterWhereClause> idBetween(
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

extension TemplateDBQueryFilter
    on QueryBuilder<TemplateDB, TemplateDB, QFilterCondition> {
  QueryBuilder<TemplateDB, TemplateDB, QAfterFilterCondition> dateEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<TemplateDB, TemplateDB, QAfterFilterCondition> dateGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<TemplateDB, TemplateDB, QAfterFilterCondition> dateLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<TemplateDB, TemplateDB, QAfterFilterCondition> dateBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'date',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TemplateDB, TemplateDB, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<TemplateDB, TemplateDB, QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<TemplateDB, TemplateDB, QAfterFilterCondition> idEqualTo(
      Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<TemplateDB, TemplateDB, QAfterFilterCondition> idGreaterThan(
    Id? value, {
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

  QueryBuilder<TemplateDB, TemplateDB, QAfterFilterCondition> idLessThan(
    Id? value, {
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

  QueryBuilder<TemplateDB, TemplateDB, QAfterFilterCondition> idBetween(
    Id? lower,
    Id? upper, {
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

  QueryBuilder<TemplateDB, TemplateDB, QAfterFilterCondition>
      linesLengthEqualTo(int length) {
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

  QueryBuilder<TemplateDB, TemplateDB, QAfterFilterCondition> linesIsEmpty() {
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

  QueryBuilder<TemplateDB, TemplateDB, QAfterFilterCondition>
      linesIsNotEmpty() {
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

  QueryBuilder<TemplateDB, TemplateDB, QAfterFilterCondition>
      linesLengthLessThan(
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

  QueryBuilder<TemplateDB, TemplateDB, QAfterFilterCondition>
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

  QueryBuilder<TemplateDB, TemplateDB, QAfterFilterCondition>
      linesLengthBetween(
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

  QueryBuilder<TemplateDB, TemplateDB, QAfterFilterCondition>
      segmentsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'segments',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<TemplateDB, TemplateDB, QAfterFilterCondition>
      segmentsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'segments',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<TemplateDB, TemplateDB, QAfterFilterCondition>
      segmentsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'segments',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<TemplateDB, TemplateDB, QAfterFilterCondition>
      segmentsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'segments',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<TemplateDB, TemplateDB, QAfterFilterCondition>
      segmentsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'segments',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<TemplateDB, TemplateDB, QAfterFilterCondition>
      segmentsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'segments',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }
}

extension TemplateDBQueryObject
    on QueryBuilder<TemplateDB, TemplateDB, QFilterCondition> {
  QueryBuilder<TemplateDB, TemplateDB, QAfterFilterCondition> linesElement(
      FilterQuery<LineDB> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'lines');
    });
  }

  QueryBuilder<TemplateDB, TemplateDB, QAfterFilterCondition> segmentsElement(
      FilterQuery<SegmentDB> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'segments');
    });
  }
}

extension TemplateDBQueryLinks
    on QueryBuilder<TemplateDB, TemplateDB, QFilterCondition> {}

extension TemplateDBQuerySortBy
    on QueryBuilder<TemplateDB, TemplateDB, QSortBy> {
  QueryBuilder<TemplateDB, TemplateDB, QAfterSortBy> sortByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.asc);
    });
  }

  QueryBuilder<TemplateDB, TemplateDB, QAfterSortBy> sortByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.desc);
    });
  }
}

extension TemplateDBQuerySortThenBy
    on QueryBuilder<TemplateDB, TemplateDB, QSortThenBy> {
  QueryBuilder<TemplateDB, TemplateDB, QAfterSortBy> thenByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.asc);
    });
  }

  QueryBuilder<TemplateDB, TemplateDB, QAfterSortBy> thenByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.desc);
    });
  }

  QueryBuilder<TemplateDB, TemplateDB, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<TemplateDB, TemplateDB, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }
}

extension TemplateDBQueryWhereDistinct
    on QueryBuilder<TemplateDB, TemplateDB, QDistinct> {
  QueryBuilder<TemplateDB, TemplateDB, QDistinct> distinctByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'date');
    });
  }
}

extension TemplateDBQueryProperty
    on QueryBuilder<TemplateDB, TemplateDB, QQueryProperty> {
  QueryBuilder<TemplateDB, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<TemplateDB, DateTime, QQueryOperations> dateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'date');
    });
  }

  QueryBuilder<TemplateDB, List<LineDB>, QQueryOperations> linesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lines');
    });
  }

  QueryBuilder<TemplateDB, List<SegmentDB>, QQueryOperations>
      segmentsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'segments');
    });
  }
}
