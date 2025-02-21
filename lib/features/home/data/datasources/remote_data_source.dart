import 'package:lask_news_app/core/funcs/parse_data.dart';
import 'package:lask_news_app/core/services/api_service.dart';
import 'package:lask_news_app/features/home/domain/entities/news_entity.dart';

abstract class RemoteDataSource {
  Future<List<NewsEntity>> getNews({String category = 'top'});
}

class RemoteDataSourceImpl extends RemoteDataSource {
  final ApiService apiService;

  RemoteDataSourceImpl({required this.apiService});

  @override
  Future<List<NewsEntity>> getNews({String category = 'top'}) async {
    var data = await apiService.getNews(category: category);
    List<NewsEntity> result = parseData(data);
    return result;
  }
}
