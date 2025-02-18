import 'package:flutter/material.dart';
import 'package:lask_news_app/constanst.dart';
import 'package:lask_news_app/core/utils/spaces.dart';
import 'package:lask_news_app/features/profile/presentation/widgets/user_profile_info.dart';
import 'package:lask_news_app/features/profile/presentation/widgets/user_profile_statistics.dart';

class ProfileViewWidget extends StatelessWidget {
  const ProfileViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: horizonalPadding),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: verticalSpace(24)),
            SliverToBoxAdapter(
              child: UserProfileInfo(),
            ),
            SliverToBoxAdapter(child: verticalSpace(24)),
            SliverToBoxAdapter(
              child: UserProfileStatistics(),
            ),
            SliverToBoxAdapter(
              child: Divider(height: 48,),
            ),
          ],
        ),
      ),
    );
  }
}
