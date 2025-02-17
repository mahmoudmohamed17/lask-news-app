import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lask_news_app/constanst.dart';
import 'package:lask_news_app/core/extensions/navigation_extension.dart';
import 'package:lask_news_app/core/services/shared_prefs.dart';
import 'package:lask_news_app/core/utils/snack_bar.dart';
import 'package:lask_news_app/core/widgets/custom_loading_indicator.dart';
import 'package:lask_news_app/features/auth/presentation/manager/signup_cubit/signup_cubit.dart';
import 'package:lask_news_app/features/auth/presentation/widgets/signup_view_body.dart';
import 'package:lask_news_app/main_view.dart';

class SignupViewBodyBlocConsumer extends StatelessWidget {
  const SignupViewBodyBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignupCubit, SignupState>(
      listener: (context, state) {
        if (state is SignupSuccess) {
          context.pushNamed(MainView.id);
          snackBar(context, 'Account created successfuly!');
          SharedPrefs.setBool(isUserAuthenticated, true);
        }
        if (state is SignupFailed) {
          snackBar(context, state.message);
        }
      },
      builder: (context, state) {
        if (state is SignupLoading) {
          return CustomLoadingIndicator();
        } else {
          return SignupViewBody();
        }
      },
    );
  }
}
