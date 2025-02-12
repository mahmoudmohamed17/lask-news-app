import 'package:flutter/material.dart';
import 'package:lask_news_app/constanst.dart';
import 'package:lask_news_app/core/extensions/navigation_extension.dart';
import 'package:lask_news_app/core/utils/app_colors.dart';
import 'package:lask_news_app/core/utils/assets.dart';
import 'package:lask_news_app/core/utils/routes.dart';
import 'package:lask_news_app/core/utils/spaces.dart';
import 'package:lask_news_app/core/utils/styles.dart';
import 'package:lask_news_app/core/widgets/custom_button.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                colors: [
                  Color(0xff2E53D7),
                  Color(0xff8FA4E9),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              )),
              child: Image.asset(
                Assets.imagesOnboarding,
                alignment: Alignment.topCenter,
              )),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                      newsItemDetailsBorder), // the same value in both items
                  topRight: Radius.circular(newsItemDetailsBorder)),
            ),
            padding: EdgeInsets.symmetric(
              horizontal: horizonalOthersPadding,
            ),
            child: Column(
              spacing: 16,
              mainAxisSize: MainAxisSize.min,
              children: [
                verticalSpace(12),
                Text(
                  onboardingTitle,
                  textAlign: TextAlign.center,
                  style: Styles.semiBold32
                      .copyWith(color: AppColors.primaryTextColor),
                ),
                Text(
                  onboardingSubTitle,
                  textAlign: TextAlign.center,
                  style: Styles.regular18
                      .copyWith(color: AppColors.secondaryTextColor),
                ),
                verticalSpace(8),
                CustomButton(
                    label: 'Explore',
                    onPressed: () {
                      context.pushReplacementNamed(Routes.mainView);
                    }),
                verticalSpace(16),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
