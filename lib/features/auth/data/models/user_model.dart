import 'package:lask_news_app/features/auth/domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  UserModel({required super.name, required super.email});

  factory UserModel.fromFirebase(user) {
    return UserModel(name: user.displayName ?? '', email: user.email);
  }
}
