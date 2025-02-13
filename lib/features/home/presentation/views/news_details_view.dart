import 'package:flutter/material.dart';
import 'package:lask_news_app/core/utils/routes.dart';
import 'package:lask_news_app/features/home/presentation/widgets/news_details_view_body.dart';

class NewsDetailsView extends StatelessWidget {
  const NewsDetailsView({super.key});
  static const String id = Routes.newsDetailsView;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NewsDetailsViewBody(),
    );
  }
}
