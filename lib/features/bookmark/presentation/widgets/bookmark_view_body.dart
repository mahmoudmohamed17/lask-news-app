import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lask_news_app/constanst.dart';
import 'package:lask_news_app/core/utils/app_colors.dart';
import 'package:lask_news_app/features/bookmark/presentation/widgets/bookmark_news_item.dart';

class BookmarkViewBody extends StatelessWidget {
  const BookmarkViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: horizonalPadding),
      child: SingleChildScrollView(
        child: Column(
          children: List.generate(15, (index) {
            return Slidable(
              endActionPane:
                  ActionPane(motion: const ScrollMotion(), children: [
                SlidableAction(
                  onPressed: (value) {},
                  icon: FontAwesomeIcons.solidBookmark,
                  foregroundColor: AppColors.secondaryTextColor,
                  backgroundColor: Colors.transparent,
                )
              ]),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: BookmarkNewsItem(),
              ),
            );
          }),
        ),
      ),
    );
  }
}
