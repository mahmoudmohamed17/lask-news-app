import 'package:flutter/material.dart';
import 'package:lask_news_app/features/explore/presentation/widgets/search_tap.dart';

class SearchTapsList extends StatefulWidget {
  const SearchTapsList({super.key, required this.currentIndex});
  final int currentIndex;

  @override
  State<SearchTapsList> createState() => _SearchTapsListState();
}

class _SearchTapsListState extends State<SearchTapsList> {
  static final List<String> _searchTapLables = [
    'All',
    'Sports',
    'Business',
    'Economy',
    'Health',
    'Politics',
    'Art',
  ];
  int _currentIndex = 0;
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
                  setState(() {
                    _currentIndex = index;
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
    );
  }
}
