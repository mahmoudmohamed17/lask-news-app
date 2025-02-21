import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:lask_news_app/core/services/api_service.dart';
import 'package:lask_news_app/core/services/app_database.dart';
import 'package:lask_news_app/core/services/firebase_auth_service.dart';
import 'package:lask_news_app/features/auth/data/repositories/auth_repo_impl.dart';
import 'package:lask_news_app/features/auth/domain/repositories/auth_repo.dart';
import 'package:lask_news_app/features/home/data/datasources/local_data_source.dart';
import 'package:lask_news_app/features/home/data/datasources/remote_data_source.dart';
import 'package:lask_news_app/features/home/data/repositories/home_repo_impl.dart';
import 'package:lask_news_app/features/home/domain/repositories/home_repo.dart';
import 'package:lask_news_app/features/home/presentation/cubit/home_cubit.dart';

final getIt = GetIt.instance;

void setupLocator() {
  getIt.registerSingleton<FirebaseAuthService>(FirebaseAuthService());
  getIt.registerSingleton<AuthRepo>(
      AuthRepoImpl(firebaseAuthService: getIt.get<FirebaseAuthService>()));
  getIt.registerSingleton<AppDatabase>(AppDatabase());
  getIt.registerSingleton<ApiService>(ApiService(dio: Dio()));
  getIt.registerSingleton<HomeRepo>(HomeRepoImpl(
      remoteDataSource: RemoteDataSourceImpl(apiService: getIt<ApiService>()),
      localDataSource: LocalDataSourceImpl()));
  getIt.registerFactory(() => HomeCubit(getIt<HomeRepo>()));
}
