import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lask_news_app/core/utils/spaces.dart';
import 'package:lask_news_app/core/utils/styles.dart';
import 'package:lask_news_app/core/widgets/custom_auth_button.dart';
import 'package:lask_news_app/core/widgets/custom_text_form_field.dart';
import 'package:lask_news_app/features/auth/presentation/manager/signin_cubit/signin_cubit.dart';
import 'package:lask_news_app/features/auth/presentation/widgets/ask_about_account.dart';

class SigninViewBody extends StatefulWidget {
  const SigninViewBody({super.key});

  @override
  State<SigninViewBody> createState() => _SigninViewBodyState();
}

class _SigninViewBodyState extends State<SigninViewBody> {
  String email = '', password = '';
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  late GlobalKey<FormState> formKey;
  @override
  void initState() {
    formKey = GlobalKey<FormState>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Welcome back!',
                  style: Styles.semiBold32,
                ),
              ),
              verticalSpace(32),
              CustomTextFormField(
                hintText: 'Email',
                onChanged: (value) {
                  email = value;
                },
              ),
              verticalSpace(16),
              CustomTextFormField(
                hintText: 'Password',
                onChanged: (value) {
                  password = value;
                },
              ),
              verticalSpace(16),
              CustomAuthButton(
                label: 'Continue',
                onPressed: () async {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    await context
                        .read<SigninCubit>()
                        .signIn(email: email, password: password);
                  } else {
                    setState(() {
                      autovalidateMode = AutovalidateMode.always;
                    });
                  }
                },
              ),
              verticalSpace(48),
              AskAboutAccount(),
            ],
          ),
        ),
      ),
    );
  }
}
