import 'package:flutter/material.dart';
import 'package:lask_news_app/core/utils/app_colors.dart';
import 'package:lask_news_app/core/utils/assets.dart';
import 'package:lask_news_app/core/utils/styles.dart';

class UserProfileInfo extends StatelessWidget {
  const UserProfileInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          Assets.imagesAvatar,
          height: 100,
          width: 100,
        ),
        Column(
          spacing: 4,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Mahmoud Mohamed',
              style:
                  Styles.semiBold24.copyWith(color: AppColors.primaryTextColor),
            ),
            Text(
              'mm10@gmail.com',
              style: Styles.regular14.copyWith(color: AppColors.primaryColor),
            ),
          ],
        ),
      ],
    );
  }
}
