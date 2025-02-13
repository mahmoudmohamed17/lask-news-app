import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lask_news_app/core/utils/snack_bar.dart';
import 'package:lask_news_app/core/widgets/custom_loading_indicator.dart';
import 'package:lask_news_app/features/auth/presentation/manager/signin_cubit/signin_cubit.dart';
import 'package:lask_news_app/features/auth/presentation/widgets/signin_view_body.dart';

class SigininViewBodyBlocConsumer extends StatelessWidget {
  const SigininViewBodyBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SigninCubit, SigninState>(
      listener: (context, state) {
        if (state is SigninSuccess) {
          snackBar(context, 'Signed in successfully');
        }
        if (state is SigninFailed) {
          snackBar(context, state.message);
        }
      },
      builder: (context, state) {
        if(state is SigninLoading) {
          return CustomLoadingIndicator();
        } else {
        return SigninViewBody();

        }
      },
    );
  }
}

// test: mm@gmail.com || 12345678
