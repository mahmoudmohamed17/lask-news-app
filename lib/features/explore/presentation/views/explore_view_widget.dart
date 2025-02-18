import 'package:flutter/material.dart';
import 'package:lask_news_app/core/utils/spaces.dart';
import 'package:lask_news_app/features/explore/presentation/widgets/explore_view_app_bar.dart';
import 'package:lask_news_app/features/explore/presentation/widgets/explore_view_body.dart';

class ExploreViewWidget extends StatelessWidget {
  const ExploreViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: ExploreViewAppBar(),
          ),
          SliverToBoxAdapter(child: verticalSpace(16)),
          SliverFillRemaining(child: ExploreViewBody(),),
        ],
      ),
    );
  }
}
