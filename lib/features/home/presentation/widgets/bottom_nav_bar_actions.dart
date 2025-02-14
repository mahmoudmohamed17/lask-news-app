import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lask_news_app/features/home/presentation/widgets/bottom_nav_bar_item.dart';

class BottomNavBarActions extends StatelessWidget {
  const BottomNavBarActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 24,
      children: [
        BottomNavBarItem(icon: FontAwesomeIcons.handsClapping, onTap: () {}),
        BottomNavBarItem(icon: FontAwesomeIcons.solidBookmark, onTap: () {}),
        BottomNavBarItem(icon: FontAwesomeIcons.share, onTap: () {}),
      ],
    );
  }
}
