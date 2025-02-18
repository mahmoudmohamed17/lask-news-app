import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lask_news_app/core/utils/app_colors.dart';
import 'package:lask_news_app/core/utils/styles.dart';

class ExploreViewAppBar extends StatelessWidget {
  const ExploreViewAppBar({
    super.key,
  });

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
            'Explore',
            style:
                Styles.semiBold32.copyWith(color: AppColors.primaryTextColor),
          ),
          GestureDetector(
            onTap: () {},
            child: Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 18,
            ),
          )
        ],
      ),
    );
  }
}
