import 'package:flutter/material.dart';
import 'package:lask_news_app/core/utils/app_colors.dart';
import 'package:lask_news_app/core/utils/styles.dart';
import 'package:lask_news_app/features/profile/presentation/widgets/settings_item.dart';

class ReadingHistoryWidget extends StatelessWidget {
  const ReadingHistoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Reading History',
          style: Styles.semiBold18.copyWith(color: AppColors.primaryTextColor),
        ),
        SettingsItem(),
        SettingsItem(),
      ],
    );
  }
}
