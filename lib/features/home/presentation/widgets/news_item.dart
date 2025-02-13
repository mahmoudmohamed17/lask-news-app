import 'package:flutter/material.dart';
import 'package:lask_news_app/constanst.dart';
import 'package:lask_news_app/core/extensions/context_extension.dart';
import 'package:lask_news_app/core/utils/app_colors.dart';
import 'package:lask_news_app/core/utils/assets.dart';
import 'package:lask_news_app/core/utils/spaces.dart';
import 'package:lask_news_app/core/utils/styles.dart';
import 'package:lask_news_app/features/home/presentation/views/news_details_view.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class NewsItem extends StatelessWidget {
  const NewsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // instead of navigator
        PersistentNavBarNavigator.pushNewScreen(context,
            screen: NewsDetailsView(),
            withNavBar: false,
            pageTransitionAnimation: PageTransitionAnimation.cupertino);
      },
      child: Container(
        constraints: BoxConstraints(
          maxWidth: context.width * 0.65,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(newsItemBorder),
            color: Colors.white),
        child: Column(
          spacing: 8,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FractionallySizedBox(
              widthFactor: 1,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(newsItemBorder),
                child: Image.asset(
                  Assets.imagesTestImage,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            FractionallySizedBox(
              widthFactor: 0.9,
              child: Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Text(
                  'Experience the Serenity of Japan\'s Traditional Countryside',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Styles.semiBold24
                      .copyWith(color: AppColors.primaryTextColor),
                ),
              ),
            ),
            FractionallySizedBox(
              widthFactor: 0.45,
              child: Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Text(
                  'Technology',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Styles.regular14
                      .copyWith(color: AppColors.secondaryTextColor),
                ),
              ),
            ),
            verticalSpace(16),
          ],
        ),
      ),
    );
  }
}
