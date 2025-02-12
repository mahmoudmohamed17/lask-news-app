import 'package:flutter/material.dart';
import 'package:lask_news_app/core/utils/spaces.dart';
import 'package:lask_news_app/core/utils/styles.dart';
import 'package:lask_news_app/core/widgets/custom_auth_button.dart';
import 'package:lask_news_app/core/widgets/custom_text_form_field.dart';
import 'package:lask_news_app/features/auth/presentation/widgets/ask_about_account.dart';

class SigninViewBody extends StatelessWidget {
  const SigninViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
            CustomTextFormField(hintText: 'Email'),
            verticalSpace(16),
            CustomTextFormField(hintText: 'Password'),
            verticalSpace(16),
            CustomAuthButton(
              label: 'Continue',
              onPressed: () {},
            ),
            verticalSpace(48),
            AskAboutAccount(),
          ],
        ),
      ),
    );
  }
}
