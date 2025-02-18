import 'package:flutter/material.dart';
import 'package:lask_news_app/core/utils/spaces.dart';
import 'package:lask_news_app/features/bookmark/presentation/widgets/bookmark_view_app_bar.dart';
import 'package:lask_news_app/features/bookmark/presentation/widgets/bookmark_view_body.dart';

class BookmarkViewWidget extends StatelessWidget {
  const BookmarkViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: BookmarkViewAppBar(),
          ),
          SliverToBoxAdapter(child: verticalSpace(16)),
          SliverFillRemaining(
            child: BookmarkViewBody(),
          ),
        ],
      ),
    );
  }
}
