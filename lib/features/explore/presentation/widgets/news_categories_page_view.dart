import 'package:flutter/material.dart';
import 'package:lask_news_app/features/explore/presentation/widgets/all_news_page_view.dart';
import 'package:lask_news_app/features/explore/presentation/widgets/art_news_page_view.dart';
import 'package:lask_news_app/features/explore/presentation/widgets/business_news_page_view.dart';
import 'package:lask_news_app/features/explore/presentation/widgets/economy_news_page_view.dart';
import 'package:lask_news_app/features/explore/presentation/widgets/health_news_page_view.dart';
import 'package:lask_news_app/features/explore/presentation/widgets/politics_news_page_view.dart';
import 'package:lask_news_app/features/explore/presentation/widgets/sports_news_page_view.dart';

class NewsCategoriesPageView extends StatelessWidget {
  const NewsCategoriesPageView({super.key, required this.pageController});
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        AllNewsPageView(),
        SportsNewsPageView(),
        BusinessNewsPageView(),
        EconomyNewsPageView(),
        HealthNewsPageView(),
        PoliticsNewsPageView(),
        ArtNewsPageView(),
      ],
    );
  }
}
