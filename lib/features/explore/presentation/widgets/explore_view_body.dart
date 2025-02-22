import 'package:flutter/material.dart';
import 'package:lask_news_app/constanst.dart';
import 'package:lask_news_app/core/extensions/context_extension.dart';
import 'package:lask_news_app/features/explore/presentation/widgets/all_news_page_view.dart';
import 'package:lask_news_app/features/explore/presentation/widgets/business_news_page_view.dart';
import 'package:lask_news_app/features/explore/presentation/widgets/economy_news_page_view.dart';
import 'package:lask_news_app/features/explore/presentation/widgets/health_news_page_view.dart';
import 'package:lask_news_app/features/explore/presentation/widgets/politics_news_page_view.dart';
import 'package:lask_news_app/features/explore/presentation/widgets/search_tab.dart';
import 'package:lask_news_app/features/explore/presentation/widgets/sports_news_page_view.dart';

class ExploreViewBody extends StatefulWidget {
  const ExploreViewBody({super.key});

  @override
  State<ExploreViewBody> createState() => _ExploreViewBodyState();
}

class _ExploreViewBodyState extends State<ExploreViewBody> {
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
    double screenWidth = context.width;
    double tabWidth = 85;
    double offset =
        (_currentIndex * tabWidth) - (screenWidth / 2) + (tabWidth / 2);
    _scrollController.animateTo(
      offset.clamp(0.0, _scrollController.position.maxScrollExtent),
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
            height: 40,
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
