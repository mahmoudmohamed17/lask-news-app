import 'package:lask_news_app/core/services/app_database.dart';
import 'package:lask_news_app/core/services/get_it_service.dart';
import 'package:lask_news_app/features/home/domain/entities/news_entity.dart';

Future<void> storeData(List<NewsEntity> result) async {
  var db = getIt<AppDatabase>();
    await db.storeNews(result);
}