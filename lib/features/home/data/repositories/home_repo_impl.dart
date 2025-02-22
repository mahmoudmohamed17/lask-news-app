import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:lask_news_app/core/errors/api_server_failure.dart';
import 'package:lask_news_app/core/errors/failure.dart';
import 'package:lask_news_app/features/home/data/datasources/home_local_data_source.dart';
import 'package:lask_news_app/features/home/data/datasources/home_remote_data_source.dart';
import 'package:lask_news_app/features/home/domain/entities/news_entity.dart';
import 'package:lask_news_app/features/home/domain/repositories/home_repo.dart';

class HomeRepoImpl extends HomeRepo {
  final HomeRemoteDataSource remoteDataSource;
  final HomeLocalDataSource localDataSource;

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
    } on DioException catch (e) {
      log('Error with getNews() in HomeRepoImpl: $e');
      return left(ApiServerFailure.fromDioException(e));
    } catch (e) {
      log('Error with getNews() in HomeRepoImpl: $e');
      return left(ApiServerFailure(message: e.toString()));
    }
  }
}
