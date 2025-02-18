import 'package:flutter/material.dart';
import 'package:lask_news_app/core/utils/app_colors.dart';
import 'package:lask_news_app/core/utils/styles.dart';

class SettingsItem extends StatelessWidget {
  const SettingsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Clapped Articles',
          style: Styles.regular14.copyWith(color: AppColors.primaryTextColor),
        ),
        Icon(
          Icons.arrow_forward_ios,
          size: 18,
        ),
      ],
    );
  }
}
