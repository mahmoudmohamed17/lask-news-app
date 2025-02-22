import 'package:flutter/material.dart';
import 'package:lask_news_app/core/utils/spaces.dart';
import 'package:lask_news_app/features/explore/presentation/widgets/explore_news_items_list.dart';
import 'package:lask_news_app/features/explore/presentation/widgets/special_explore_news_item.dart';

class EntertainmentNewsPageView extends StatelessWidget {
  const EntertainmentNewsPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SpecialExploreNewsItem(),
        verticalSpace(16),
        ExploreNewsItemsList(),
      ],
    );
  }
}
