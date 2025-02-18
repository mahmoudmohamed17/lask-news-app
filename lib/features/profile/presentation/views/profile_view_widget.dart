import 'package:flutter/material.dart';
import 'package:lask_news_app/core/utils/spaces.dart';

class ProfileViewWidget extends StatelessWidget {
  const ProfileViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          verticalSpace(24),
          
        ],
      ),
    );
  }
}
