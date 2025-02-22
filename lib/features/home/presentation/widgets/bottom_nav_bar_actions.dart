import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lask_news_app/core/utils/assets.dart';
import 'package:lask_news_app/features/home/presentation/widgets/bottom_nav_bar_item.dart';

class BottomNavBarActions extends StatelessWidget {
  const BottomNavBarActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 24,
      children: [
        BottomNavBarItem(icon: FontAwesomeIcons.solidHeart, onTap: () {}),
        BottomNavBarItem(icon: FontAwesomeIcons.solidBookmark, onTap: () {}),
        GestureDetector(
          onTap: () {},
          child: SvgPicture.asset(
            Assets.imagesShare,
            height: 20,
            width: 20,
          ),
        )
      ],
    );
  }
}
