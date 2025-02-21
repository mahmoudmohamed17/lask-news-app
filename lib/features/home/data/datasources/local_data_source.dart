import 'package:lask_news_app/core/services/app_database.dart';
import 'package:lask_news_app/core/services/get_it_service.dart';
import 'package:lask_news_app/features/home/domain/entities/news_entity.dart';

abstract class LocalDataSource {
  Future<List<NewsEntity>> getNews({String category = 'top'});
}

class LocalDataSourceImpl extends LocalDataSource {
  @override
  Future<List<NewsEntity>> getNews({String category = 'top'}) async {
    var db = getIt<AppDatabase>();
    var result = await db.getNews(category: category);
    return result;
  }
}
