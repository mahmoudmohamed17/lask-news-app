import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lask_news_app/core/services/get_it_service.dart';
import 'package:lask_news_app/core/utils/routes.dart';
import 'package:lask_news_app/features/auth/domain/repositories/auth_repo.dart';
import 'package:lask_news_app/features/auth/presentation/manager/signup_cubit/signup_cubit.dart';
import 'package:lask_news_app/features/auth/presentation/widgets/signup_view_body_bloc_consumer.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});
  static const String id = Routes.signupView;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignupCubit(getIt<AuthRepo>()),
      child: Scaffold(
        appBar: AppBar(),
        body: SignupViewBodyBlocConsumer(),
      ),
    );
  }
}
