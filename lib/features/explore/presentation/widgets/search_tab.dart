import 'package:flutter/material.dart';
import 'package:lask_news_app/constanst.dart';
import 'package:lask_news_app/core/utils/app_colors.dart';
import 'package:lask_news_app/core/utils/styles.dart';

class SearchTab extends StatelessWidget {
  const SearchTab({
    super.key,
    required this.label,
    required this.isActive,
  });
  final String label;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 400),
      decoration: ShapeDecoration(
          color: isActive ? AppColors.secondaryColor : Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(exploreButtonItemBorder),
              side: BorderSide(color: AppColors.secondaryColor))),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Text(
        label,
        style: Styles.semiBold14.copyWith(color: AppColors.primaryColor),
      ),
    );
  }
}
