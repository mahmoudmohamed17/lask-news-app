part of 'signup_cubit.dart';

class SignupState {}

final class SignupInitial extends SignupState {}
final class SignupLoading extends SignupState {}
final class SignupSuccess extends SignupState {
  final UserEntity user;

  SignupSuccess({required this.user});
}
final class SignupFailed extends SignupState {
  final String message;

  SignupFailed({required this.message});
}
