import 'package:bloc/bloc.dart';
import 'package:lask_news_app/features/auth/domain/entities/user_entity.dart';
import 'package:lask_news_app/features/auth/domain/repositories/auth_repo.dart';
part 'signin_state.dart';

class SigninCubit extends Cubit<SigninState> {
  SigninCubit(this.authRepo) : super(SigninInitial());
  final AuthRepo authRepo;
  Future<void> signIn({required String email, required String password}) async {
    emit(SigninLoading());
    var result = await authRepo.signIn(email: email, password: password);
    result.fold((failed) => emit(SigninFailed(message: failed.message)),
        (user) => emit(SigninSuccess(user: user)));
  }
}
