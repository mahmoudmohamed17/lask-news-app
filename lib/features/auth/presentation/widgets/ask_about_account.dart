import 'package:flutter/material.dart';
import 'package:lask_news_app/core/extensions/navigation_extension.dart';
import 'package:lask_news_app/core/utils/routes.dart';
import 'package:lask_news_app/core/utils/styles.dart';

class AskAboutAccount extends StatelessWidget {
  const AskAboutAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 4,
      children: [
        Text(
          'Don\'t have an account?',
          style: Styles.regular14,
        ),
        GestureDetector(
          onTap: () {
            context.pushNamed(Routes.signupView);
          },
          child: Text(
            'Create Account',
            style: Styles.regular14
                .copyWith(decoration: TextDecoration.underline),
          ),
        ),
      ],
    );
  }
}
