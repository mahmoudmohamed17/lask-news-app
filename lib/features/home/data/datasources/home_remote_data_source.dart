import 'package:lask_news_app/constanst.dart';
import 'package:lask_news_app/core/funcs/parse_data.dart';
import 'package:lask_news_app/core/funcs/store_data.dart';
import 'package:lask_news_app/core/services/api_service.dart';
import 'package:lask_news_app/features/home/domain/entities/news_entity.dart';

abstract class HomeRemoteDataSource {
  Future<List<NewsEntity>> getNews({String category = defaultApiRequestParam});
}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  final ApiService apiService;

  HomeRemoteDataSourceImpl({required this.apiService});

  @override
  Future<List<NewsEntity>> getNews({String category = defaultApiRequestParam}) async {
    var data = await apiService.getNews(category: category);
    List<NewsEntity> result = parseData(data);
    await storeData(result);
    return result;
  }
}
