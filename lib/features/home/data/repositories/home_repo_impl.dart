import 'package:dartz/dartz.dart';
import 'package:lask_news_app/core/errors/failure.dart';
import 'package:lask_news_app/features/home/data/datasources/local_data_source.dart';
import 'package:lask_news_app/features/home/data/datasources/remote_data_source.dart';
import 'package:lask_news_app/features/home/domain/entities/news_entity.dart';
import 'package:lask_news_app/features/home/domain/repositories/home_repo.dart';

class HomeRepoImpl extends HomeRepo {
  final RemoteDataSource remoteDataSource;
  final LocalDataSource localDataSource;

  HomeRepoImpl({required this.remoteDataSource, required this.localDataSource});

  @override
  Future<Either<Failure, List<NewsEntity>>> getNews(
      {String category = 'top'}) async {
    List<NewsEntity> result = [];
    try {
      result = await localDataSource.getNews(category: category);
      if (result.isEmpty) {
        result = await remoteDataSource.getNews(category: category);
      }
      return right(result);
    } catch (e) {
      return left(ApiServerFailure(
          message:
              'An error occured while handling the data, please try again later.'));
    }
  }
}
