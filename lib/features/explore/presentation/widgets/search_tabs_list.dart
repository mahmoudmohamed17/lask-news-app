import 'package:flutter/material.dart';
import 'package:lask_news_app/features/explore/presentation/widgets/search_tab.dart';

class SearchTabsList extends StatelessWidget {
  const SearchTabsList(
      {super.key, required this.currentIndex, required this.pageController});
  final int currentIndex;
  final PageController pageController;

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
    return SizedBox(
      height: 35,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: _searchTapLables.length,
          itemBuilder: (_, index) {
            return GestureDetector(
                onTap: () {
                  pageController.animateToPage(index,
                      duration: Duration(milliseconds: 300),
                      curve: Curves.ease);
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: SearchTab(
                    label: _searchTapLables[index],
                    isActive: currentIndex == index,
                  ),
                ));
          }),
    );
  }
}
