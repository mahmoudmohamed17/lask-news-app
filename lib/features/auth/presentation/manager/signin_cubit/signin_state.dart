part of 'signin_cubit.dart';

class SigninState {}

final class SigninInitial extends SigninState {}

final class SigninLoading extends SigninState {}

final class SigninSuccess extends SigninState {
  final UserEntity user;

  SigninSuccess({required this.user});
}

final class SigninFailed extends SigninState {
  final String message;

  SigninFailed({required this.message});
}
