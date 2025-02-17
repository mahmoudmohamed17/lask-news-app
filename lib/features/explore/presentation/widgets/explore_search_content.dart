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
          SizedBox(
            height: 35,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _searchTapLables.length,
                itemBuilder: (_, index) {
                  return GestureDetector(
                      onTap: () {
                        _pageController.animateToPage(index,
                            duration: Duration(milliseconds: 300),
                            curve: Curves.ease);
                        setState(() {
                          _currentIndex = index;
                        });
                      },
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
