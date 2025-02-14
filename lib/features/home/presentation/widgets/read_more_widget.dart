import 'package:flutter/material.dart';
import 'package:lask_news_app/core/utils/app_colors.dart';
import 'package:lask_news_app/core/utils/styles.dart';

class ReadMoreWidget extends StatelessWidget {
  const ReadMoreWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 4,
      children: [
        Text('Want to read more?',
            style: Styles.semiBold14
                .copyWith(color: AppColors.primaryColor)),
        Text('Click here',
            style: Styles.semiBold14.copyWith(
              color: AppColors.primaryColor,
              decoration: TextDecoration.underline,
              decorationColor: AppColors.primaryColor,
            )),
      ],
    );
  }
}
