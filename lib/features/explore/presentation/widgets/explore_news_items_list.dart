import 'package:flutter/material.dart';
import 'package:lask_news_app/features/explore/presentation/widgets/explore_news_item.dart';

class ExploreNewsItemsList extends StatelessWidget {
  const ExploreNewsItemsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(15, (index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: ExploreNewsItem(),
        );
      }),
    );
  }
}
