import 'package:get_it/get_it.dart';
import 'package:lask_news_app/core/services/app_database.dart';
import 'package:lask_news_app/core/services/firebase_auth_service.dart';
import 'package:lask_news_app/features/auth/data/repositories/auth_repo_impl.dart';
import 'package:lask_news_app/features/auth/domain/repositories/auth_repo.dart';

final getIt = GetIt.instance;

void setupLocator() {
  getIt.registerSingleton<FirebaseAuthService>(FirebaseAuthService());
  getIt.registerSingleton<AuthRepo>(
      AuthRepoImpl(firebaseAuthService: getIt.get<FirebaseAuthService>()));
  getIt.registerSingleton<AppDatabase>(AppDatabase());
}
