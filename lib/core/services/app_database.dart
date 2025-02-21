import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'package:lask_news_app/core/utils/news_table.dart';
import 'package:lask_news_app/features/home/domain/entities/news_entity.dart';
import 'package:path_provider/path_provider.dart';
part 'app_database.g.dart';

@DriftDatabase(tables: [NewsTable])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  Future<void> storeNews(List<NewsEntity> data) async {
    await batch((batch) {
      batch.insertAll(
        newsTable,
        data.map((news) => NewsTableCompanion.insert(
              title: news.articleTitle,
              description: news.articleDescription,
              author: news.author,
              url: news.url,
              image: news.image,
              date: news.creationDate,
              category: news.articleCategory,
              isLiked: Value(news.isLiked),
              isBookmarked: Value(news.isBookmarked),
            )),
      );
    });
  }

  Future<List<NewsEntity>> getNews({String category = 'top'}) async {
    final query = select(newsTable)
      ..where((art) => art.category.equals(category));
    final news = await query.get();
    return news
        .map((item) => NewsEntity(
            articleTitle: item.title,
            articleDescription: item.description,
            image: item.image,
            creationDate: item.date,
            author: item.author,
            url: item.url,
            articleCategory: item.category,
            isLiked: item.isLiked,
            isBookmarked: item.isBookmarked))
        .toList();
  }

  Future<void> updateArticle(NewsEntity article) async {
    await (update(newsTable)..where((art) => art.url.equals(article.url)))
        .write(NewsTableCompanion(
      title: Value(article.articleTitle),
      description: Value(article.articleDescription),
      image: Value(article.image),
      author: Value(article.author),
      date: Value(article.creationDate),
      category: Value(article.articleCategory),
      isBookmarked: Value(article.isBookmarked),
      isLiked: Value(article.isLiked),
    ));
  }

  static QueryExecutor _openConnection() {
    return driftDatabase(
      name: 'my_database',
      native: const DriftNativeOptions(
        databaseDirectory: getApplicationSupportDirectory,
      ),
    );
  }
}
