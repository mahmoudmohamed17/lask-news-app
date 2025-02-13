import 'package:bloc/bloc.dart';
import 'package:lask_news_app/features/auth/domain/entities/user_entity.dart';
import 'package:lask_news_app/features/auth/domain/repositories/auth_repo.dart';
part 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit(this.authRepo) : super(SignupInitial());
  final AuthRepo authRepo;

  Future<void> signUp({required String email, required String password}) async {
    emit(SignupLoading());
    var result = await authRepo.signUp(email: email, password: password);
    result.fold((failed) => emit(SignupFailed(message: failed.message)),
        (user) => emit(SignupSuccess(user: user)));
  }
}
