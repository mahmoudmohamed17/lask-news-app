import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lask_news_app/core/services/get_it_service.dart';
import 'package:lask_news_app/core/utils/routes.dart';
import 'package:lask_news_app/features/auth/domain/repositories/auth_repo.dart';
import 'package:lask_news_app/features/auth/presentation/manager/signin_cubit/signin_cubit.dart';
import 'package:lask_news_app/features/auth/presentation/widgets/signin_view_body_bloc_consumer.dart';

class SigninView extends StatelessWidget {
  const SigninView({super.key});
  static const String id = Routes.signinView;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SigninCubit(getIt<AuthRepo>()),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SigininViewBodyBlocConsumer(),
      ),
    );
  }
}
