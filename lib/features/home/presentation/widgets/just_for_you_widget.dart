import 'package:flutter/material.dart';
import 'package:lask_news_app/core/utils/app_colors.dart';
import 'package:lask_news_app/core/utils/spaces.dart';
import 'package:lask_news_app/core/utils/styles.dart';
import 'package:lask_news_app/features/home/presentation/widgets/news_list.dart';

class JustForYouWidget extends StatelessWidget {
  const JustForYouWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Just For You',
              style:
                  Styles.semiBold24.copyWith(color: AppColors.primaryTextColor),
            ),
            Text(
              'See More',
              style: Styles.semiBold16.copyWith(color: AppColors.primaryColor),
            )
          ],
        ),
        verticalSpace(16),
        NewsList(),
      ],
    );
  }
}
