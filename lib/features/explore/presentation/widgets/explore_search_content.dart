import 'package:flutter/material.dart';
import 'package:lask_news_app/constanst.dart';
import 'package:lask_news_app/features/explore/presentation/widgets/news_categories_page_view.dart';
import 'package:lask_news_app/features/explore/presentation/widgets/search_tabs_list.dart';

class ExploreSearchContent extends StatefulWidget {
  const ExploreSearchContent({super.key});

  @override
  State<ExploreSearchContent> createState() => _ExploreSearchContentState();
}

class _ExploreSearchContentState extends State<ExploreSearchContent> {
  late PageController _pageController;
  int _currentIndex = 0;
  @override
  void initState() {
    _pageController = PageController();
    _pageController.addListener(() {
      _currentIndex = _pageController.page!.round();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: horizonalPadding),
      child: Column(
        spacing: 16,
        children: [
          SearchTabsList(
              currentIndex: _currentIndex, pageController: _pageController),
          Expanded(
            child: NewsCategoriesPageView(pageController: _pageController),
          ),
        ],
      ),
    );
  }
}
