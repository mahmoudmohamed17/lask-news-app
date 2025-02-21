// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $NewsTableTable extends NewsTable
    with TableInfo<$NewsTableTable, NewsTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $NewsTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _imageMeta = const VerificationMeta('image');
  @override
  late final GeneratedColumn<String> image = GeneratedColumn<String>(
      'image', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _authorMeta = const VerificationMeta('author');
  @override
  late final GeneratedColumn<String> author = GeneratedColumn<String>(
      'author', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<String> date = GeneratedColumn<String>(
      'date', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _urlMeta = const VerificationMeta('url');
  @override
  late final GeneratedColumn<String> url = GeneratedColumn<String>(
      'url', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _isLikedMeta =
      const VerificationMeta('isLiked');
  @override
  late final GeneratedColumn<bool> isLiked = GeneratedColumn<bool>(
      'is_liked', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_liked" IN (0, 1))'),
      defaultValue: const Variable(false));
  static const VerificationMeta _isBookmarkedMeta =
      const VerificationMeta('isBookmarked');
  @override
  late final GeneratedColumn<bool> isBookmarked = GeneratedColumn<bool>(
      'is_bookmarked', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_bookmarked" IN (0, 1))'),
      defaultValue: const Variable(false));
  @override
  List<GeneratedColumn> get $columns =>
      [id, title, description, image, author, date, url, isLiked, isBookmarked];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'news_table';
  @override
  VerificationContext validateIntegrity(Insertable<NewsTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('image')) {
      context.handle(
          _imageMeta, image.isAcceptableOrUnknown(data['image']!, _imageMeta));
    } else if (isInserting) {
      context.missing(_imageMeta);
    }
    if (data.containsKey('author')) {
      context.handle(_authorMeta,
          author.isAcceptableOrUnknown(data['author']!, _authorMeta));
    } else if (isInserting) {
      context.missing(_authorMeta);
    }
    if (data.containsKey('date')) {
      context.handle(
          _dateMeta, date.isAcceptableOrUnknown(data['date']!, _dateMeta));
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    if (data.containsKey('url')) {
      context.handle(
          _urlMeta, url.isAcceptableOrUnknown(data['url']!, _urlMeta));
    } else if (isInserting) {
      context.missing(_urlMeta);
    }
    if (data.containsKey('is_liked')) {
      context.handle(_isLikedMeta,
          isLiked.isAcceptableOrUnknown(data['is_liked']!, _isLikedMeta));
    }
    if (data.containsKey('is_bookmarked')) {
      context.handle(
          _isBookmarkedMeta,
          isBookmarked.isAcceptableOrUnknown(
              data['is_bookmarked']!, _isBookmarkedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  NewsTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return NewsTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description'])!,
      image: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}image'])!,
      author: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}author'])!,
      date: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}date'])!,
      url: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}url'])!,
      isLiked: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_liked'])!,
      isBookmarked: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_bookmarked'])!,
    );
  }

  @override
  $NewsTableTable createAlias(String alias) {
    return $NewsTableTable(attachedDatabase, alias);
  }
}

class NewsTableData extends DataClass implements Insertable<NewsTableData> {
  final int id;
  final String title;
  final String description;
  final String image;
  final String author;
  final String date;
  final String url;
  final bool isLiked;
  final bool isBookmarked;
  const NewsTableData(
      {required this.id,
      required this.title,
      required this.description,
      required this.image,
      required this.author,
      required this.date,
      required this.url,
      required this.isLiked,
      required this.isBookmarked});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['title'] = Variable<String>(title);
    map['description'] = Variable<String>(description);
    map['image'] = Variable<String>(image);
    map['author'] = Variable<String>(author);
    map['date'] = Variable<String>(date);
    map['url'] = Variable<String>(url);
    map['is_liked'] = Variable<bool>(isLiked);
    map['is_bookmarked'] = Variable<bool>(isBookmarked);
    return map;
  }

  NewsTableCompanion toCompanion(bool nullToAbsent) {
    return NewsTableCompanion(
      id: Value(id),
      title: Value(title),
      description: Value(description),
      image: Value(image),
      author: Value(author),
      date: Value(date),
      url: Value(url),
      isLiked: Value(isLiked),
      isBookmarked: Value(isBookmarked),
    );
  }

  factory NewsTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return NewsTableData(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      description: serializer.fromJson<String>(json['description']),
      image: serializer.fromJson<String>(json['image']),
      author: serializer.fromJson<String>(json['author']),
      date: serializer.fromJson<String>(json['date']),
      url: serializer.fromJson<String>(json['url']),
      isLiked: serializer.fromJson<bool>(json['isLiked']),
      isBookmarked: serializer.fromJson<bool>(json['isBookmarked']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
      'description': serializer.toJson<String>(description),
      'image': serializer.toJson<String>(image),
      'author': serializer.toJson<String>(author),
      'date': serializer.toJson<String>(date),
      'url': serializer.toJson<String>(url),
      'isLiked': serializer.toJson<bool>(isLiked),
      'isBookmarked': serializer.toJson<bool>(isBookmarked),
    };
  }

  NewsTableData copyWith(
          {int? id,
          String? title,
          String? description,
          String? image,
          String? author,
          String? date,
          String? url,
          bool? isLiked,
          bool? isBookmarked}) =>
      NewsTableData(
        id: id ?? this.id,
        title: title ?? this.title,
        description: description ?? this.description,
        image: image ?? this.image,
        author: author ?? this.author,
        date: date ?? this.date,
        url: url ?? this.url,
        isLiked: isLiked ?? this.isLiked,
        isBookmarked: isBookmarked ?? this.isBookmarked,
      );
  NewsTableData copyWithCompanion(NewsTableCompanion data) {
    return NewsTableData(
      id: data.id.present ? data.id.value : this.id,
      title: data.title.present ? data.title.value : this.title,
      description:
          data.description.present ? data.description.value : this.description,
      image: data.image.present ? data.image.value : this.image,
      author: data.author.present ? data.author.value : this.author,
      date: data.date.present ? data.date.value : this.date,
      url: data.url.present ? data.url.value : this.url,
      isLiked: data.isLiked.present ? data.isLiked.value : this.isLiked,
      isBookmarked: data.isBookmarked.present
          ? data.isBookmarked.value
          : this.isBookmarked,
    );
  }

  @override
  String toString() {
    return (StringBuffer('NewsTableData(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('image: $image, ')
          ..write('author: $author, ')
          ..write('date: $date, ')
          ..write('url: $url, ')
          ..write('isLiked: $isLiked, ')
          ..write('isBookmarked: $isBookmarked')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, title, description, image, author, date, url, isLiked, isBookmarked);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is NewsTableData &&
          other.id == this.id &&
          other.title == this.title &&
          other.description == this.description &&
          other.image == this.image &&
          other.author == this.author &&
          other.date == this.date &&
          other.url == this.url &&
          other.isLiked == this.isLiked &&
          other.isBookmarked == this.isBookmarked);
}

class NewsTableCompanion extends UpdateCompanion<NewsTableData> {
  final Value<int> id;
  final Value<String> title;
  final Value<String> description;
  final Value<String> image;
  final Value<String> author;
  final Value<String> date;
  final Value<String> url;
  final Value<bool> isLiked;
  final Value<bool> isBookmarked;
  const NewsTableCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.description = const Value.absent(),
    this.image = const Value.absent(),
    this.author = const Value.absent(),
    this.date = const Value.absent(),
    this.url = const Value.absent(),
    this.isLiked = const Value.absent(),
    this.isBookmarked = const Value.absent(),
  });
  NewsTableCompanion.insert({
    this.id = const Value.absent(),
    required String title,
    required String description,
    required String image,
    required String author,
    required String date,
    required String url,
    this.isLiked = const Value.absent(),
    this.isBookmarked = const Value.absent(),
  })  : title = Value(title),
        description = Value(description),
        image = Value(image),
        author = Value(author),
        date = Value(date),
        url = Value(url);
  static Insertable<NewsTableData> custom({
    Expression<int>? id,
    Expression<String>? title,
    Expression<String>? description,
    Expression<String>? image,
    Expression<String>? author,
    Expression<String>? date,
    Expression<String>? url,
    Expression<bool>? isLiked,
    Expression<bool>? isBookmarked,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (description != null) 'description': description,
      if (image != null) 'image': image,
      if (author != null) 'author': author,
      if (date != null) 'date': date,
      if (url != null) 'url': url,
      if (isLiked != null) 'is_liked': isLiked,
      if (isBookmarked != null) 'is_bookmarked': isBookmarked,
    });
  }

  NewsTableCompanion copyWith(
      {Value<int>? id,
      Value<String>? title,
      Value<String>? description,
      Value<String>? image,
      Value<String>? author,
      Value<String>? date,
      Value<String>? url,
      Value<bool>? isLiked,
      Value<bool>? isBookmarked}) {
    return NewsTableCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      image: image ?? this.image,
      author: author ?? this.author,
      date: date ?? this.date,
      url: url ?? this.url,
      isLiked: isLiked ?? this.isLiked,
      isBookmarked: isBookmarked ?? this.isBookmarked,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (image.present) {
      map['image'] = Variable<String>(image.value);
    }
    if (author.present) {
      map['author'] = Variable<String>(author.value);
    }
    if (date.present) {
      map['date'] = Variable<String>(date.value);
    }
    if (url.present) {
      map['url'] = Variable<String>(url.value);
    }
    if (isLiked.present) {
      map['is_liked'] = Variable<bool>(isLiked.value);
    }
    if (isBookmarked.present) {
      map['is_bookmarked'] = Variable<bool>(isBookmarked.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('NewsTableCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('image: $image, ')
          ..write('author: $author, ')
          ..write('date: $date, ')
          ..write('url: $url, ')
          ..write('isLiked: $isLiked, ')
          ..write('isBookmarked: $isBookmarked')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $NewsTableTable newsTable = $NewsTableTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [newsTable];
}

typedef $$NewsTableTableCreateCompanionBuilder = NewsTableCompanion Function({
  Value<int> id,
  required String title,
  required String description,
  required String image,
  required String author,
  required String date,
  required String url,
  Value<bool> isLiked,
  Value<bool> isBookmarked,
});
typedef $$NewsTableTableUpdateCompanionBuilder = NewsTableCompanion Function({
  Value<int> id,
  Value<String> title,
  Value<String> description,
  Value<String> image,
  Value<String> author,
  Value<String> date,
  Value<String> url,
  Value<bool> isLiked,
  Value<bool> isBookmarked,
});

class $$NewsTableTableFilterComposer
    extends Composer<_$AppDatabase, $NewsTableTable> {
  $$NewsTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get image => $composableBuilder(
      column: $table.image, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get author => $composableBuilder(
      column: $table.author, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get date => $composableBuilder(
      column: $table.date, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get url => $composableBuilder(
      column: $table.url, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isLiked => $composableBuilder(
      column: $table.isLiked, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isBookmarked => $composableBuilder(
      column: $table.isBookmarked, builder: (column) => ColumnFilters(column));
}

class $$NewsTableTableOrderingComposer
    extends Composer<_$AppDatabase, $NewsTableTable> {
  $$NewsTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get image => $composableBuilder(
      column: $table.image, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get author => $composableBuilder(
      column: $table.author, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get date => $composableBuilder(
      column: $table.date, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get url => $composableBuilder(
      column: $table.url, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isLiked => $composableBuilder(
      column: $table.isLiked, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isBookmarked => $composableBuilder(
      column: $table.isBookmarked,
      builder: (column) => ColumnOrderings(column));
}

class $$NewsTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $NewsTableTable> {
  $$NewsTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => column);

  GeneratedColumn<String> get image =>
      $composableBuilder(column: $table.image, builder: (column) => column);

  GeneratedColumn<String> get author =>
      $composableBuilder(column: $table.author, builder: (column) => column);

  GeneratedColumn<String> get date =>
      $composableBuilder(column: $table.date, builder: (column) => column);

  GeneratedColumn<String> get url =>
      $composableBuilder(column: $table.url, builder: (column) => column);

  GeneratedColumn<bool> get isLiked =>
      $composableBuilder(column: $table.isLiked, builder: (column) => column);

  GeneratedColumn<bool> get isBookmarked => $composableBuilder(
      column: $table.isBookmarked, builder: (column) => column);
}

class $$NewsTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $NewsTableTable,
    NewsTableData,
    $$NewsTableTableFilterComposer,
    $$NewsTableTableOrderingComposer,
    $$NewsTableTableAnnotationComposer,
    $$NewsTableTableCreateCompanionBuilder,
    $$NewsTableTableUpdateCompanionBuilder,
    (
      NewsTableData,
      BaseReferences<_$AppDatabase, $NewsTableTable, NewsTableData>
    ),
    NewsTableData,
    PrefetchHooks Function()> {
  $$NewsTableTableTableManager(_$AppDatabase db, $NewsTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$NewsTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$NewsTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$NewsTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> title = const Value.absent(),
            Value<String> description = const Value.absent(),
            Value<String> image = const Value.absent(),
            Value<String> author = const Value.absent(),
            Value<String> date = const Value.absent(),
            Value<String> url = const Value.absent(),
            Value<bool> isLiked = const Value.absent(),
            Value<bool> isBookmarked = const Value.absent(),
          }) =>
              NewsTableCompanion(
            id: id,
            title: title,
            description: description,
            image: image,
            author: author,
            date: date,
            url: url,
            isLiked: isLiked,
            isBookmarked: isBookmarked,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String title,
            required String description,
            required String image,
            required String author,
            required String date,
            required String url,
            Value<bool> isLiked = const Value.absent(),
            Value<bool> isBookmarked = const Value.absent(),
          }) =>
              NewsTableCompanion.insert(
            id: id,
            title: title,
            description: description,
            image: image,
            author: author,
            date: date,
            url: url,
            isLiked: isLiked,
            isBookmarked: isBookmarked,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$NewsTableTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $NewsTableTable,
    NewsTableData,
    $$NewsTableTableFilterComposer,
    $$NewsTableTableOrderingComposer,
    $$NewsTableTableAnnotationComposer,
    $$NewsTableTableCreateCompanionBuilder,
    $$NewsTableTableUpdateCompanionBuilder,
    (
      NewsTableData,
      BaseReferences<_$AppDatabase, $NewsTableTable, NewsTableData>
    ),
    NewsTableData,
    PrefetchHooks Function()>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$NewsTableTableTableManager get newsTable =>
      $$NewsTableTableTableManager(_db, _db.newsTable);
}
