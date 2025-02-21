import 'package:flutter/material.dart';
import 'package:lask_news_app/constanst.dart';
import 'package:lask_news_app/core/extensions/context_extension.dart';
import 'package:lask_news_app/core/extensions/navigation_extension.dart';
import 'package:lask_news_app/core/utils/app_colors.dart';
import 'package:lask_news_app/core/utils/assets.dart';
import 'package:lask_news_app/core/utils/styles.dart';
import 'package:lask_news_app/features/home/presentation/views/news_details_view.dart';

class SpecialExploreNewsItem extends StatelessWidget {
  const SpecialExploreNewsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(NewsDetailsView.id);
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(newsItemBorder),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 8,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(newsItemBorder),
              child: Image.asset(
                Assets.imagesTestImage,
                height: 200,
                width: double.infinity,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              width: context.width * 0.90,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  'This is a test text. This is a test text. This is a test text. This is a test text.',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Styles.semiBold24
                      .copyWith(color: AppColors.primaryTextColor),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 8,
                right: 8,
                bottom: 8,
              ),
              child: Row(
                spacing: 8,
                children: [
                  Image.asset(
                    Assets.imagesWritterImage,
                    height: 24,
                    width: 24,
                  ),
                  SizedBox(
                    width: context.width * 0.75,
                    child: Text(
                      'Harry Harper · Apr 12, 2023',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.regular12
                          .copyWith(color: AppColors.secondaryHeavyTextColor),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
