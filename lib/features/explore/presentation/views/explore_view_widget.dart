import 'package:flutter/material.dart';
import 'package:lask_news_app/core/utils/spaces.dart';
import 'package:lask_news_app/core/widgets/custom_app_bar.dart';
import 'package:lask_news_app/features/explore/presentation/widgets/explore_search_content.dart';

class ExploreViewWidget extends StatelessWidget {
  const ExploreViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: CustomAppBar(
              title: 'Explore',
            ),
          ),
          SliverToBoxAdapter(child: verticalSpace(16)),
          SliverFillRemaining(child: ExploreSearchContent(),),
        ],
      ),
    );
  }
}
