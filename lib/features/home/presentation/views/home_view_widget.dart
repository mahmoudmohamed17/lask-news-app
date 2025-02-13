import 'package:flutter/material.dart';
import 'package:lask_news_app/constanst.dart';
import 'package:lask_news_app/core/utils/spaces.dart';
import 'package:lask_news_app/features/home/presentation/widgets/home_view_app_bar.dart';

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
          ],
        ),
      ),
    );
  }
}
