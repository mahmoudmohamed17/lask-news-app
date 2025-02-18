import 'package:flutter/material.dart';
import 'package:lask_news_app/core/utils/app_colors.dart';
import 'package:lask_news_app/core/utils/styles.dart';

class StatisticItem extends StatelessWidget {
  const StatisticItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 4,
      children: [
        Text(
          'Articles Read',
          style: Styles.regular14
              .copyWith(color: AppColors.secondaryLightTextColor),
        ),
        Text(
          '125',
          style: Styles.semiBold24.copyWith(color: AppColors.primaryTextColor),
        ),
      ],
    );
  }
}
