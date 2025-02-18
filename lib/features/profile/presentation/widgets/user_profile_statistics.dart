import 'package:flutter/material.dart';
import 'package:lask_news_app/features/profile/presentation/widgets/statistic_item.dart';

class UserProfileStatistics extends StatelessWidget {
  const UserProfileStatistics({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        StatisticItem(),
        StatisticItem(),
        StatisticItem(),
      ],
    );
  }
}
