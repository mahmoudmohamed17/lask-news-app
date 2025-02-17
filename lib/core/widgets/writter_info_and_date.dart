import 'package:flutter/material.dart';
import 'package:lask_news_app/core/utils/app_colors.dart';
import 'package:lask_news_app/core/utils/assets.dart';
import 'package:lask_news_app/core/utils/styles.dart';

class WritterInfoAndDate extends StatelessWidget {
  const WritterInfoAndDate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 8,
      children: [
        Image.asset(
          Assets.imagesWritterImage,
          height: 24,
          width: 24,
        ),
        FittedBox(
          child: Text(
            'Harry Harper · Apr 12, 2023',
            style: Styles.regular12
                .copyWith(color: AppColors.secondaryTextColor),
          ),
        ),
      ],
    );
  }
}
