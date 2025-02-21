import 'package:flutter/material.dart';
import 'package:lask_news_app/core/funcs/get_current_date_time.dart';
import 'package:lask_news_app/core/utils/app_colors.dart';
import 'package:lask_news_app/core/utils/styles.dart';

class WelcomeWidget extends StatelessWidget {
  const WelcomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 8,
      children: [
        Text(
          'Hello, Mahmoud!',
          style: Styles.regular18
              .copyWith(color: AppColors.secondaryHeavyTextColor),
        ),
        Text(
          getCurrentDateTime(),
          style: Styles.semiBold12,
        ),
      ],
    );
  }
}
