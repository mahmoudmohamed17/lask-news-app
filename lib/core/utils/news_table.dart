import 'package:drift/drift.dart';

class NewsTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text()();
  TextColumn get description => text()();
  TextColumn get image => text()();
  TextColumn get author => text()();
  TextColumn get date => text()();
  TextColumn get url => text()();
  TextColumn get category => text()();
  BoolColumn get isLiked => boolean()();
  BoolColumn get isBookmarked => boolean()();
}
