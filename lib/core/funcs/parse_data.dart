import 'package:lask_news_app/features/home/data/models/news_model.dart';
import 'package:lask_news_app/features/home/domain/entities/news_entity.dart';

List<NewsEntity> parseData(Map<String, dynamic> data) {
  List<NewsEntity> result = [];
  for (var item in data['results']) {
    result.add(NewsModel.fromJson(item));
  }
  return result;
}
