import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lask_news_app/core/utils/routes.dart';
import 'package:lask_news_app/features/bookmark/presentation/views/bookmark_view_widget.dart';
import 'package:lask_news_app/features/explore/presentation/views/explore_view_widget.dart';
import 'package:lask_news_app/features/home/presentation/views/home_view_widget.dart';
import 'package:lask_news_app/features/profile/presentation/views/profile_view_widget.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});
  static const String id = Routes.mainView;

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int _currentIndex = 0;
  final List<Widget> _screens = const [
    HomeViewWidget(),
    ExploreViewWidget(),
    BookmarkViewWidget(),
    ProfileViewWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _screens,
      ),
      bottomNavigationBar: SalomonBottomBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            SalomonBottomBarItem(
                icon: Icon(FontAwesomeIcons.house),
                title: Text('Home'),
                selectedColor: Colors.black),
            SalomonBottomBarItem(
                icon: Icon(FontAwesomeIcons.earthAmericas),
                title: Text('Explore'),
                selectedColor: Colors.black),
            SalomonBottomBarItem(
                icon: Icon(FontAwesomeIcons.book),
                title: Text('Bookmark'),
                selectedColor: Colors.black),
            SalomonBottomBarItem(
                icon: Icon(FontAwesomeIcons.solidUser),
                title: Text('Profile'),
                selectedColor: Colors.black),
          ]),
    );
  }
}
