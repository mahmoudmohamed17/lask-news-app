import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lask_news_app/constanst.dart';
import 'package:lask_news_app/core/extensions/context_extension.dart';
import 'package:lask_news_app/core/extensions/navigation_extension.dart';
import 'package:lask_news_app/core/funcs/capitalize_first_letter.dart';
import 'package:lask_news_app/core/utils/app_colors.dart';
import 'package:lask_news_app/core/utils/assets.dart';
import 'package:lask_news_app/core/utils/styles.dart';
import 'package:lask_news_app/features/home/domain/entities/news_entity.dart';
import 'package:lask_news_app/features/home/presentation/views/news_details_view.dart';

class NewsItem extends StatelessWidget {
  const NewsItem({super.key, required this.newsEntity});
  final NewsEntity newsEntity;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(NewsDetailsView.id, arguments: newsEntity);
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
                child: newsEntity.image.isNotEmpty
                    ? CachedNetworkImage(
                        imageUrl: newsEntity.image,
                        errorWidget: (context, url, error) => Icon(
                          FontAwesomeIcons.triangleExclamation,
                          color: Colors.red,
                        ),
                        placeholder: (context, url) => Center(
                          child: CircularProgressIndicator(),
                        ),
                        fit: BoxFit.fill,
                      )
                    : Image.asset(Assets.imagesSplash, fit: BoxFit.fill),
              ),
            ),
            FractionallySizedBox(
              widthFactor: 1.00,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  newsEntity.articleTitle,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Styles.semiBold24
                      .copyWith(color: AppColors.primaryTextColor),
                ),
              ),
            ),
            FractionallySizedBox(
              widthFactor: 0.50,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  capitalizeFirstLetter(
                    newsEntity.articleCategory,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Styles.regular14
                      .copyWith(color: AppColors.secondaryHeavyTextColor),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
