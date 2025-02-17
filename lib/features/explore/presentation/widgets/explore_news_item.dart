import 'package:flutter/material.dart';
import 'package:lask_news_app/constanst.dart';
import 'package:lask_news_app/core/extensions/context_extension.dart';
import 'package:lask_news_app/core/utils/app_colors.dart';
import 'package:lask_news_app/core/utils/assets.dart';
import 'package:lask_news_app/core/utils/styles.dart';
import 'package:lask_news_app/core/widgets/writter_info_and_date.dart';

class ExploreNewsItem extends StatelessWidget {
  const ExploreNewsItem({
    super.key,
  });
  // final ExploreNewsItemModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(newsItemBorder),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 8,
              children: [
                SizedBox(
                  width: context.width * 0.55,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      'This is a test text This is a test text This is a test text This is a test text',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.semiBold18
                          .copyWith(color: AppColors.primaryTextColor),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: WritterInfoAndDate(),
                ),
              ],
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(newsItemBorder),
            child: Image.asset(
              Assets.imagesTestImage,
              height: 100,
              width: 120,
              fit: BoxFit.fill,
            ),
          )
        ],
      ),
    );
  }
}
