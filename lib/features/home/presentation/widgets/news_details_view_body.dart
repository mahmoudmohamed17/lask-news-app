import 'package:flutter/material.dart';
import 'package:lask_news_app/constanst.dart';
import 'package:lask_news_app/core/utils/app_colors.dart';
import 'package:lask_news_app/core/utils/assets.dart';
import 'package:lask_news_app/core/utils/styles.dart';

class NewsDetailsViewBody extends StatelessWidget {
  const NewsDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset(
            Assets.imagesTestImage,
            fit: BoxFit.cover,
          ),
        ),
        CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 300,
              backgroundColor: Colors.transparent,
              flexibleSpace: FlexibleSpaceBar(
                background: Container(),
              ),
            ),
            SliverFillRemaining(
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(horizonalPadding),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(newsItemDetailsBorder),
                        topRight: Radius.circular(newsItemDetailsBorder))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('See How the Forest is Helping Our World',
                    textAlign: TextAlign.start,
                        style: Styles.semiBold32
                            .copyWith(color: AppColors.primaryTextColor)),
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
