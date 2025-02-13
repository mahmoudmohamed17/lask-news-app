import 'package:flutter/material.dart';
import 'package:lask_news_app/core/extensions/context_extension.dart';
import 'package:lask_news_app/features/home/presentation/widgets/news_item.dart';

class NewsList extends StatelessWidget {
  const NewsList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height * 0.47,
      child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 16),
              child: NewsItem(),
            );
          }),
    );
  }
}
