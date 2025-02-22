import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lask_news_app/constanst.dart';
import 'package:lask_news_app/core/funcs/convert_news_entity_date.dart';
import 'package:lask_news_app/core/utils/app_colors.dart';
import 'package:lask_news_app/core/utils/assets.dart';
import 'package:lask_news_app/core/utils/spaces.dart';
import 'package:lask_news_app/core/utils/styles.dart';
import 'package:lask_news_app/features/home/domain/entities/news_entity.dart';
import 'package:lask_news_app/features/home/presentation/widgets/read_more_widget.dart';

class NewsDetailsViewBody extends StatelessWidget {
  const NewsDetailsViewBody({super.key, required this.newsEntity});
  final NewsEntity newsEntity;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          top: -450,
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
              : Image.asset(
                  Assets.imagesSplash,
                  fit: BoxFit.fill,
                ),
        ),
        // Note: The CustomScrollView is actaully filling the whole screen
        CustomScrollView(
          slivers: [
            SliverAppBar(
              automaticallyImplyLeading: false,
              expandedHeight: 250,
              backgroundColor: Colors.transparent,
              flexibleSpace: FlexibleSpaceBar(
                background: Container(),
              ),
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(newsItemDetailsBorder),
                        topRight: Radius.circular(newsItemDetailsBorder))),
                padding: EdgeInsets.all(horizonalPadding),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(newsEntity.articleTitle,
                        textAlign: TextAlign.start,
                        style: Styles.semiBold32
                            .copyWith(color: AppColors.primaryTextColor)),
                    verticalSpace(20),
                    Row(
                      spacing: 8,
                      children: [
                        CachedNetworkImage(
                          imageUrl: newsEntity.articleSourceImage,
                          height: 28,
                          width: 28,
                        ),
                        Flexible(
                          child: Text(
                            '${newsEntity.author} · ${convertNewsEntityDate(newsEntity.creationDate)}',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: Styles.regular12.copyWith(
                                color: AppColors.secondaryHeavyTextColor),
                          ),
                        ),
                      ],
                    ),
                    verticalSpace(24),
                    Text(
                      newsEntity.articleDescription,
                      style: Styles.regular16
                          .copyWith(color: AppColors.primaryTextColor),
                    ),
                    verticalSpace(24),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: ReadMoreWidget(
                        url: newsEntity.url,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
