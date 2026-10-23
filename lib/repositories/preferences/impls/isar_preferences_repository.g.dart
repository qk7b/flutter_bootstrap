// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'isar_preferences_repository.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types, experimental_member_use

extension GetIsarPreferencesCollection on Isar {
  IsarCollection<IsarPreferences> get isarPreferences => this.collection();
}

const IsarPreferencesSchema = CollectionSchema(
  name: r'Preferences',
  id: 4252616732994050084,
  properties: {
    r'isTrackingDisabled': PropertySchema(
      id: 0,
      name: r'isTrackingDisabled',
      type: IsarType.bool,
    ),
  },

  estimateSize: _isarPreferencesEstimateSize,
  serialize: _isarPreferencesSerialize,
  deserialize: _isarPreferencesDeserialize,
  deserializeProp: _isarPreferencesDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},

  getId: _isarPreferencesGetId,
  getLinks: _isarPreferencesGetLinks,
  attach: _isarPreferencesAttach,
  version: '3.4.1',
);

int _isarPreferencesEstimateSize(
  IsarPreferences object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _isarPreferencesSerialize(
  IsarPreferences object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeBool(offsets[0], object.isTrackingDisabled);
}

IsarPreferences _isarPreferencesDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = IsarPreferences();
  object.id = id;
  object.isTrackingDisabled = reader.readBool(offsets[0]);
  return object;
}

P _isarPreferencesDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readBool(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _isarPreferencesGetId(IsarPreferences object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _isarPreferencesGetLinks(IsarPreferences object) {
  return [];
}

void _isarPreferencesAttach(
  IsarCollection<dynamic> col,
  Id id,
  IsarPreferences object,
) {
  object.id = id;
}

extension IsarPreferencesQueryWhereSort
    on QueryBuilder<IsarPreferences, IsarPreferences, QWhere> {
  QueryBuilder<IsarPreferences, IsarPreferences, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension IsarPreferencesQueryWhere
    on QueryBuilder<IsarPreferences, IsarPreferences, QWhereClause> {
  QueryBuilder<IsarPreferences, IsarPreferences, QAfterWhereClause> idEqualTo(
    Id id,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(lower: id, upper: id));
    });
  }

  QueryBuilder<IsarPreferences, IsarPreferences, QAfterWhereClause>
  idNotEqualTo(Id id) {
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

  QueryBuilder<IsarPreferences, IsarPreferences, QAfterWhereClause>
  idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<IsarPreferences, IsarPreferences, QAfterWhereClause> idLessThan(
    Id id, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<IsarPreferences, IsarPreferences, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.between(
          lower: lowerId,
          includeLower: includeLower,
          upper: upperId,
          includeUpper: includeUpper,
        ),
      );
    });
  }
}

extension IsarPreferencesQueryFilter
    on QueryBuilder<IsarPreferences, IsarPreferences, QFilterCondition> {
  QueryBuilder<IsarPreferences, IsarPreferences, QAfterFilterCondition>
  idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'id', value: value),
      );
    });
  }

  QueryBuilder<IsarPreferences, IsarPreferences, QAfterFilterCondition>
  idGreaterThan(Id value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'id',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<IsarPreferences, IsarPreferences, QAfterFilterCondition>
  idLessThan(Id value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'id',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<IsarPreferences, IsarPreferences, QAfterFilterCondition>
  idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'id',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<IsarPreferences, IsarPreferences, QAfterFilterCondition>
  isTrackingDisabledEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'isTrackingDisabled', value: value),
      );
    });
  }
}

extension IsarPreferencesQueryObject
    on QueryBuilder<IsarPreferences, IsarPreferences, QFilterCondition> {}

extension IsarPreferencesQueryLinks
    on QueryBuilder<IsarPreferences, IsarPreferences, QFilterCondition> {}

extension IsarPreferencesQuerySortBy
    on QueryBuilder<IsarPreferences, IsarPreferences, QSortBy> {
  QueryBuilder<IsarPreferences, IsarPreferences, QAfterSortBy>
  sortByIsTrackingDisabled() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isTrackingDisabled', Sort.asc);
    });
  }

  QueryBuilder<IsarPreferences, IsarPreferences, QAfterSortBy>
  sortByIsTrackingDisabledDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isTrackingDisabled', Sort.desc);
    });
  }
}

extension IsarPreferencesQuerySortThenBy
    on QueryBuilder<IsarPreferences, IsarPreferences, QSortThenBy> {
  QueryBuilder<IsarPreferences, IsarPreferences, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<IsarPreferences, IsarPreferences, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<IsarPreferences, IsarPreferences, QAfterSortBy>
  thenByIsTrackingDisabled() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isTrackingDisabled', Sort.asc);
    });
  }

  QueryBuilder<IsarPreferences, IsarPreferences, QAfterSortBy>
  thenByIsTrackingDisabledDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isTrackingDisabled', Sort.desc);
    });
  }
}

extension IsarPreferencesQueryWhereDistinct
    on QueryBuilder<IsarPreferences, IsarPreferences, QDistinct> {
  QueryBuilder<IsarPreferences, IsarPreferences, QDistinct>
  distinctByIsTrackingDisabled() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isTrackingDisabled');
    });
  }
}

extension IsarPreferencesQueryProperty
    on QueryBuilder<IsarPreferences, IsarPreferences, QQueryProperty> {
  QueryBuilder<IsarPreferences, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<IsarPreferences, bool, QQueryOperations>
  isTrackingDisabledProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isTrackingDisabled');
    });
  }
}
