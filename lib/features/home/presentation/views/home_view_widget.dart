import 'package:flutter/material.dart';
import 'package:lask_news_app/constanst.dart';
import 'package:lask_news_app/core/utils/spaces.dart';
import 'package:lask_news_app/features/home/presentation/widgets/home_view_app_bar.dart';
import 'package:lask_news_app/features/home/presentation/widgets/just_for_you_widget.dart';
import 'package:lask_news_app/features/home/presentation/widgets/news_list.dart';
import 'package:lask_news_app/features/home/presentation/widgets/welcome_widget.dart';

class HomeViewWidget extends StatelessWidget {
  const HomeViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: horizonalPadding),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: verticalSpace(16)),
            SliverToBoxAdapter(child: HomeViewAppBar()),
            SliverToBoxAdapter(child: verticalSpace(16)),
            SliverToBoxAdapter(child: WelcomeWidget()),
            SliverToBoxAdapter(child: verticalSpace(24)),
            SliverToBoxAdapter(child: NewsList()),
            SliverToBoxAdapter(child: verticalSpace(24)),
            SliverToBoxAdapter(child: JustForYouWidget()),
            SliverToBoxAdapter(child: verticalSpace(16)),
          ],
        ),
      ),
    );
  }
}
