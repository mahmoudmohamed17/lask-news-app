import 'package:dio/dio.dart';
import 'package:lask_news_app/core/utils/api_keys.dart';

class ApiService {
  final String _baseUrl = 'https://newsdata.io/api/1/latest';
  final String constParams = '&country=us&language=en';
  final Dio dio;
  ApiService({required this.dio});

  Future<Map<String, dynamic>> getNews({String category = 'top'}) async {
    Response response = await dio.get(
        '$_baseUrl?apiKey=${ApiKeys.newsApiKey}&category=$category$constParams');
    return response.data;
  }
}
