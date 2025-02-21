import 'package:dartz/dartz.dart';
import 'package:lask_news_app/core/errors/failure.dart';
import 'package:lask_news_app/features/home/domain/entities/news_entity.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<NewsEntity>>> getNews({String category = 'top'});
}