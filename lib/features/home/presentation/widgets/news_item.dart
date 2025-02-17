import 'package:flutter/material.dart';
import 'package:lask_news_app/constanst.dart';
import 'package:lask_news_app/core/extensions/context_extension.dart';
import 'package:lask_news_app/core/extensions/navigation_extension.dart';
import 'package:lask_news_app/core/utils/app_colors.dart';
import 'package:lask_news_app/core/utils/assets.dart';
import 'package:lask_news_app/core/utils/styles.dart';
import 'package:lask_news_app/features/home/presentation/views/news_details_view.dart';

class NewsItem extends StatelessWidget {
  const NewsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(NewsDetailsView.id);
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
            SizedBox(
              width: double.infinity,
              height: 270,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(newsItemBorder),
                child: Image.asset(
                  Assets.imagesTestImage,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            FractionallySizedBox(
              widthFactor: 0.85,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
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
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  'Technology',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Styles.regular14
                      .copyWith(color: AppColors.secondaryTextColor),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
