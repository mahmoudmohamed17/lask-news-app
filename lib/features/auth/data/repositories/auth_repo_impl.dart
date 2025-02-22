import 'package:dartz/dartz.dart';
import 'package:lask_news_app/core/errors/custom_exception.dart';
import 'package:lask_news_app/core/errors/failure.dart';
import 'package:lask_news_app/core/errors/firebase_server_failure.dart';
import 'package:lask_news_app/core/services/firebase_auth_service.dart';
import 'package:lask_news_app/features/auth/data/models/user_model.dart';
import 'package:lask_news_app/features/auth/domain/entities/user_entity.dart';
import 'package:lask_news_app/features/auth/domain/repositories/auth_repo.dart';

class AuthRepoImpl extends AuthRepo {
  final FirebaseAuthService firebaseAuthService;

  AuthRepoImpl({required this.firebaseAuthService});

  @override
  Future<Either<Failure, UserEntity>> signIn(
      {required String email, required String password}) async {
    try {
      var user =
          await firebaseAuthService.signIn(email: email, password: password);
      return right(UserModel.fromFirebase(user));
    } on CustomException catch (e) {
      return left(FirebaseServerFailure(message: e.message));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signUp(
      {required String email, required String password}) async {
    try {
      var user =
          await firebaseAuthService.signUp(email: email, password: password);
      return right(UserModel.fromFirebase(user));
    } on CustomException catch (e) {
      return left(FirebaseServerFailure(message: e.message));
    }
  }
}
