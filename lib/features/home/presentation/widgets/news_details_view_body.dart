import 'package:flutter/material.dart';
import 'package:lask_news_app/constanst.dart';
import 'package:lask_news_app/core/utils/app_colors.dart';
import 'package:lask_news_app/core/utils/assets.dart';
import 'package:lask_news_app/core/utils/spaces.dart';
import 'package:lask_news_app/core/utils/styles.dart';
import 'package:lask_news_app/features/home/presentation/widgets/read_more_widget.dart';

class NewsDetailsViewBody extends StatelessWidget {
  const NewsDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset(
            Assets.imagesTestImage,
            height: 250,
            fit: BoxFit.fitWidth,
            alignment: Alignment.topCenter,
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
                    Text('See How the Forest is Helping Our World',
                        textAlign: TextAlign.start,
                        style: Styles.semiBold32
                            .copyWith(color: AppColors.primaryTextColor)),
                    verticalSpace(20),
                    Row(
                      spacing: 8,
                      children: [
                        Image.asset(
                          Assets.imagesWritterImage,
                          height: 24,
                          width: 24,
                        ),
                        Text(
                          'Harry Harper · Apr 12, 2023',
                          style: Styles.regular12
                              .copyWith(color: AppColors.secondaryTextColor),
                        ),
                      ],
                    ),
                    verticalSpace(24),
                    Text(
                      'Forests are one of the most important natural resources that our planet possesses. Not only do they provide us with a diverse range of products such as timber, medicine, and food, but they also play a vital role in mitigating climate change and maintaining the overall health of our planet\'s ecosystems. In this article, we will explore the ways in which forests are helping our world.',
                      style: Styles.regular16
                          .copyWith(color: AppColors.primaryTextColor),
                    ),
                    verticalSpace(24),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: ReadMoreWidget(),
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
