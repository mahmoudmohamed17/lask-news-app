import 'package:flutter/material.dart';
import 'package:lask_news_app/constanst.dart';
import 'package:lask_news_app/features/explore/presentation/widgets/all_news_page_view.dart';
import 'package:lask_news_app/features/explore/presentation/widgets/art_news_page_view.dart';
import 'package:lask_news_app/features/explore/presentation/widgets/business_news_page_view.dart';
import 'package:lask_news_app/features/explore/presentation/widgets/economy_news_page_view.dart';
import 'package:lask_news_app/features/explore/presentation/widgets/health_news_page_view.dart';
import 'package:lask_news_app/features/explore/presentation/widgets/politics_news_page_view.dart';
import 'package:lask_news_app/features/explore/presentation/widgets/search_tab.dart';
import 'package:lask_news_app/features/explore/presentation/widgets/sports_news_page_view.dart';

class ExploreSearchContent extends StatefulWidget {
  const ExploreSearchContent({super.key});

  @override
  State<ExploreSearchContent> createState() => _ExploreSearchContentState();
}

class _ExploreSearchContentState extends State<ExploreSearchContent> {
  int _currentIndex = 0;
  late PageController _pageController;
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _scrollController = ScrollController();
    _pageController.addListener(_syncTabScroll);
  }

  void _syncTabScroll() {
    setState(() {
      _currentIndex = _pageController.page!.round();
    });
    double scrollOffset = _currentIndex * 50.0;
    _scrollController.animateTo(
      scrollOffset,
      duration: Duration(milliseconds: 300),
      curve: Curves.ease,
    );
  }

  void _onTapTab(int index) {
    _pageController.animateToPage(index,
        duration: Duration(milliseconds: 300), curve: Curves.ease);
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  void dispose() {
    _pageController.removeListener(_syncTabScroll);
    _pageController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: horizonalPadding),
      child: Column(
        spacing: 16,
        children: [
          SizedBox(
            height: 37,
            child: ListView.builder(
                controller: _scrollController,
                scrollDirection: Axis.horizontal,
                itemCount: _searchTapLables.length,
                itemBuilder: (_, index) {
                  return GestureDetector(
                      onTap: () => _onTapTab(index),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: SearchTab(
                          label: _searchTapLables[index],
                          isActive: _currentIndex == index,
                        ),
                      ));
                }),
          ),
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              children: [
                AllNewsPageView(),
                SportsNewsPageView(),
                BusinessNewsPageView(),
                EconomyNewsPageView(),
                HealthNewsPageView(),
                PoliticsNewsPageView(),
                ArtNewsPageView(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

final List<String> _searchTapLables = [
  'All',
  'Sports',
  'Business',
  'Economy',
  'Health',
  'Politics',
  'Art',
];
