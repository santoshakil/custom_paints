// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings

extension GetAppConfigCollection on Isar {
  IsarCollection<AppConfig> get appConfigs => collection();
}

const AppConfigSchema = CollectionSchema(
  name: r'AppConfig',
  schema:
      r'{"name":"AppConfig","idName":"id","properties":[{"name":"firstRun","type":"Bool"},{"name":"hashCode","type":"Long"},{"name":"themeIndex","type":"Long"}],"indexes":[],"links":[]}',
  idName: r'id',
  propertyIds: {r'firstRun': 0, r'hashCode': 1, r'themeIndex': 2},
  listProperties: {},
  indexIds: {},
  indexValueTypes: {},
  linkIds: {},
  backlinkLinkNames: {},
  getId: _appConfigGetId,
  setId: _appConfigSetId,
  getLinks: _appConfigGetLinks,
  attachLinks: _appConfigAttachLinks,
  serializeNative: _appConfigSerializeNative,
  deserializeNative: _appConfigDeserializeNative,
  deserializePropNative: _appConfigDeserializePropNative,
  serializeWeb: _appConfigSerializeWeb,
  deserializeWeb: _appConfigDeserializeWeb,
  deserializePropWeb: _appConfigDeserializePropWeb,
  version: 4,
);

int? _appConfigGetId(AppConfig object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

void _appConfigSetId(AppConfig object, int id) {
  object.id = id;
}

List<IsarLinkBase<dynamic>> _appConfigGetLinks(AppConfig object) {
  return [];
}

void _appConfigSerializeNative(
    IsarCollection<AppConfig> collection,
    IsarCObject cObj,
    AppConfig object,
    int staticSize,
    List<int> offsets,
    AdapterAlloc alloc) {
  final size = (staticSize) as int;
  cObj.buffer = alloc(size);
  cObj.buffer_length = size;

  final buffer = IsarNative.bufAsBytes(cObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeHeader();
  writer.writeBool(offsets[0], object.firstRun);
  writer.writeLong(offsets[1], object.hashCode);
  writer.writeLong(offsets[2], object.themeIndex);
}

AppConfig _appConfigDeserializeNative(IsarCollection<AppConfig> collection,
    int id, IsarBinaryReader reader, List<int> offsets) {
  final object = AppConfig(
    firstRun: reader.readBool(offsets[0]),
    themeIndex: reader.readLong(offsets[2]),
  );
  object.id = id;
  return object;
}

P _appConfigDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readBool(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Illegal propertyIndex');
  }
}

Object _appConfigSerializeWeb(
    IsarCollection<AppConfig> collection, AppConfig object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, r'firstRun', object.firstRun);
  IsarNative.jsObjectSet(jsObj, r'hashCode', object.hashCode);
  IsarNative.jsObjectSet(jsObj, r'id', object.id);
  IsarNative.jsObjectSet(jsObj, r'themeIndex', object.themeIndex);
  return jsObj;
}

AppConfig _appConfigDeserializeWeb(
    IsarCollection<AppConfig> collection, Object jsObj) {
  final object = AppConfig(
    firstRun: IsarNative.jsObjectGet(jsObj, r'firstRun') ?? false,
    themeIndex: IsarNative.jsObjectGet(jsObj, r'themeIndex') ??
        (double.negativeInfinity as int),
  );
  object.id = IsarNative.jsObjectGet(jsObj, r'id');
  return object;
}

P _appConfigDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case r'firstRun':
      return (IsarNative.jsObjectGet(jsObj, r'firstRun') ?? false) as P;
    case r'hashCode':
      return (IsarNative.jsObjectGet(jsObj, r'hashCode') ??
          (double.negativeInfinity as int)) as P;
    case r'id':
      return (IsarNative.jsObjectGet(jsObj, r'id')) as P;
    case r'themeIndex':
      return (IsarNative.jsObjectGet(jsObj, r'themeIndex') ??
          (double.negativeInfinity as int)) as P;
    default:
      throw IsarError('Illegal propertyName');
  }
}

void _appConfigAttachLinks(
    IsarCollection<dynamic> col, int id, AppConfig object) {}

extension AppConfigQueryWhereSort
    on QueryBuilder<AppConfig, AppConfig, QWhere> {
  QueryBuilder<AppConfig, AppConfig, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension AppConfigQueryWhere
    on QueryBuilder<AppConfig, AppConfig, QWhereClause> {
  QueryBuilder<AppConfig, AppConfig, QAfterWhereClause> idEqualTo(int id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterWhereClause> idNotEqualTo(int id) {
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

  QueryBuilder<AppConfig, AppConfig, QAfterWhereClause> idGreaterThan(int id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterWhereClause> idLessThan(int id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterWhereClause> idBetween(
    int lowerId,
    int upperId, {
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

extension AppConfigQueryFilter
    on QueryBuilder<AppConfig, AppConfig, QFilterCondition> {
  QueryBuilder<AppConfig, AppConfig, QAfterFilterCondition> firstRunEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'firstRun',
        value: value,
      ));
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterFilterCondition> hashCodeEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterFilterCondition> hashCodeGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterFilterCondition> hashCodeLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterFilterCondition> hashCodeBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'hashCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterFilterCondition> idEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterFilterCondition> idGreaterThan(
    int value, {
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

  QueryBuilder<AppConfig, AppConfig, QAfterFilterCondition> idLessThan(
    int value, {
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

  QueryBuilder<AppConfig, AppConfig, QAfterFilterCondition> idBetween(
    int lower,
    int upper, {
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

  QueryBuilder<AppConfig, AppConfig, QAfterFilterCondition> themeIndexEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'themeIndex',
        value: value,
      ));
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterFilterCondition>
      themeIndexGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'themeIndex',
        value: value,
      ));
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterFilterCondition> themeIndexLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'themeIndex',
        value: value,
      ));
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterFilterCondition> themeIndexBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'themeIndex',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension AppConfigQueryLinks
    on QueryBuilder<AppConfig, AppConfig, QFilterCondition> {}

extension AppConfigQueryWhereSortBy
    on QueryBuilder<AppConfig, AppConfig, QSortBy> {
  QueryBuilder<AppConfig, AppConfig, QAfterSortBy> sortByFirstRun() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'firstRun', Sort.asc);
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterSortBy> sortByFirstRunDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'firstRun', Sort.desc);
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterSortBy> sortByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterSortBy> sortByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterSortBy> sortByThemeIndex() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'themeIndex', Sort.asc);
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterSortBy> sortByThemeIndexDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'themeIndex', Sort.desc);
    });
  }
}

extension AppConfigQueryWhereSortThenBy
    on QueryBuilder<AppConfig, AppConfig, QSortThenBy> {
  QueryBuilder<AppConfig, AppConfig, QAfterSortBy> thenByFirstRun() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'firstRun', Sort.asc);
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterSortBy> thenByFirstRunDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'firstRun', Sort.desc);
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterSortBy> thenByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterSortBy> thenByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterSortBy> thenByThemeIndex() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'themeIndex', Sort.asc);
    });
  }

  QueryBuilder<AppConfig, AppConfig, QAfterSortBy> thenByThemeIndexDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'themeIndex', Sort.desc);
    });
  }
}

extension AppConfigQueryWhereDistinct
    on QueryBuilder<AppConfig, AppConfig, QDistinct> {
  QueryBuilder<AppConfig, AppConfig, QDistinct> distinctByFirstRun() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'firstRun');
    });
  }

  QueryBuilder<AppConfig, AppConfig, QDistinct> distinctByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hashCode');
    });
  }

  QueryBuilder<AppConfig, AppConfig, QDistinct> distinctByThemeIndex() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'themeIndex');
    });
  }
}

extension AppConfigQueryProperty
    on QueryBuilder<AppConfig, AppConfig, QQueryProperty> {
  QueryBuilder<AppConfig, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<AppConfig, bool, QQueryOperations> firstRunProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'firstRun');
    });
  }

  QueryBuilder<AppConfig, int, QQueryOperations> hashCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hashCode');
    });
  }

  QueryBuilder<AppConfig, int, QQueryOperations> themeIndexProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'themeIndex');
    });
  }
}
