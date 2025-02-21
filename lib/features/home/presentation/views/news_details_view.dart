import 'package:flutter/material.dart';
import 'package:lask_news_app/constanst.dart';
import 'package:lask_news_app/core/extensions/navigation_extension.dart';
import 'package:lask_news_app/core/utils/routes.dart';
import 'package:lask_news_app/features/home/domain/entities/news_entity.dart';
import 'package:lask_news_app/features/home/presentation/widgets/bottom_nav_bar_actions.dart';
import 'package:lask_news_app/features/home/presentation/widgets/news_details_view_body.dart';

class NewsDetailsView extends StatelessWidget {
  const NewsDetailsView({super.key, required this.newsEntity});
  static const String id = Routes.newsDetailsView;
  final NewsEntity newsEntity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: NewsDetailsViewBody(newsEntity: newsEntity,),
      bottomNavigationBar: SafeArea(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [BoxShadow(color: Colors.grey[200]!, spreadRadius: 1)],
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(bottomNavBarBorder),
                  topRight: Radius.circular(bottomNavBarBorder))),
          padding: EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                  onTap: () {
                    context.pop();
                  },
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  )),
              BottomNavBarActions(),
            ],
          ),
        ),
      ),
    );
  }
}
