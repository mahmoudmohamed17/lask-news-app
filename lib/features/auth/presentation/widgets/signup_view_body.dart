import 'package:flutter/material.dart';
import 'package:lask_news_app/core/extensions/context_extension.dart';
import 'package:lask_news_app/core/extensions/navigation_extension.dart';
import 'package:lask_news_app/core/utils/routes.dart';
import 'package:lask_news_app/core/utils/spaces.dart';
import 'package:lask_news_app/core/utils/styles.dart';
import 'package:lask_news_app/core/widgets/custom_auth_button.dart';
import 'package:lask_news_app/core/widgets/custom_text_form_field.dart';
import 'package:lask_news_app/features/auth/presentation/widgets/image_picking_widget.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            verticalSpace(context.height * 0.09),
            
            ImagePickingWidget(),
            verticalSpace(32),
            Text(
              'Create Account',
              style: Styles.semiBold32,
              textAlign: TextAlign.center,
            ),
            verticalSpace(32),
            CustomTextFormField(hintText: 'Name'),
            verticalSpace(16),
            CustomTextFormField(hintText: 'Email'),
            verticalSpace(16),
            CustomTextFormField(hintText: 'Password'),
            verticalSpace(16),
            CustomAuthButton(
              label: 'Continue',
              onPressed: () {
                context.pushNamed(Routes.signupView);
              },
            ),
          ],
        ),
      ),
    );
  }
}
