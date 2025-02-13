import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lask_news_app/core/utils/routes.dart';
import 'package:lask_news_app/features/home/presentation/views/home_view_widget.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});
  static const String id = Routes.mainView;

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  late PersistentTabController _controller;

  @override
  void initState() {
    _controller = PersistentTabController(initialIndex: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      hideNavigationBarWhenKeyboardAppears: true,
      popBehaviorOnSelectedNavBarItemPress: PopBehavior.all,
      padding: const EdgeInsets.only(top: 8),
      backgroundColor: Colors.white,
      isVisible: true,
      animationSettings: const NavBarAnimationSettings(
        navBarItemAnimation: ItemAnimationSettings(
          duration: Duration(milliseconds: 400),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: ScreenTransitionAnimationSettings(
          duration: Duration(milliseconds: 200),
          screenTransitionAnimationType: ScreenTransitionAnimationType.fadeIn,
        ),
      ),
      confineToSafeArea: true,
      navBarHeight: kBottomNavigationBarHeight,
    );
  }

  List<Widget> _buildScreens() {
    return [
      HomeViewWidget(),
      Center(
        child: Text('Explore'),
      ),
      Center(
        child: Text('Bookmark'),
      ),
      Center(
        child: Text('Profile'),
      ),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
          icon: Icon(FontAwesomeIcons.house),
          title: ("Home"),
          activeColorPrimary: Colors.black,
          activeColorSecondary: Colors.black,
          inactiveColorPrimary: Colors.black,
          inactiveColorSecondary: Colors.transparent,
          routeAndNavigatorSettings: RouteAndNavigatorSettings()),
      PersistentBottomNavBarItem(
        icon: Icon(FontAwesomeIcons.earthAmericas),
        title: ("Explore"),
        activeColorPrimary: Colors.black,
        activeColorSecondary: Colors.black,
        inactiveColorPrimary: Colors.black,
        inactiveColorSecondary: Colors.transparent,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(FontAwesomeIcons.book),
        title: ("Bookmark"),
        activeColorPrimary: Colors.black,
        activeColorSecondary: Colors.black,
        inactiveColorPrimary: Colors.black,
        inactiveColorSecondary: Colors.transparent,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(FontAwesomeIcons.solidUser),
        title: ("Profile"),
        activeColorPrimary: Colors.black,
        activeColorSecondary: Colors.black,
        inactiveColorPrimary: Colors.black,
        inactiveColorSecondary: Colors.transparent,
      ),
    ];
  }
}
