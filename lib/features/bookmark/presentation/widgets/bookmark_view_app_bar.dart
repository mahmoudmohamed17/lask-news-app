import 'package:flutter/material.dart';
import 'package:lask_news_app/core/utils/app_colors.dart';
import 'package:lask_news_app/core/utils/styles.dart';

class BookmarkViewAppBar extends StatelessWidget {
  const BookmarkViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.secondaryColor,
        ),
        padding: EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Bookmark',
              style:
                  Styles.semiBold32.copyWith(color: AppColors.primaryTextColor),
            ),
          ],
        ));
  }
}
