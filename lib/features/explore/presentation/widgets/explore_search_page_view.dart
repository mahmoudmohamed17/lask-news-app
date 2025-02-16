import 'package:flutter/material.dart';
import 'package:lask_news_app/constanst.dart';
import 'package:lask_news_app/features/explore/presentation/widgets/all_news_page_view.dart';
import 'package:lask_news_app/features/explore/presentation/widgets/search_tap.dart';

class ExploreSearchPageView extends StatefulWidget {
  const ExploreSearchPageView({super.key});

  @override
  State<ExploreSearchPageView> createState() => _ExploreSearchPageViewState();
}

class _ExploreSearchPageViewState extends State<ExploreSearchPageView> {
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

  static final List<String> _searchTapLables = [
    'All',
    'Sports',
    'Business',
    'Economy',
    'Health',
    'Politics',
    'Art',
  ];

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
                        setState(() {
                          _currentIndex = index;
                          _pageController.animateToPage(index,
                              duration: Duration(milliseconds: 300),
                              curve: Curves.ease);
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: SearchTap(
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
                Center(
                  child: Text('page 2'),
                ),
                Center(
                  child: Text('page 3'),
                ),
                Center(
                  child: Text('page 4'),
                ),
                Center(
                  child: Text('page 5'),
                ),
                Center(
                  child: Text('page 6'),
                ),
                Center(
                  child: Text('page 7'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
