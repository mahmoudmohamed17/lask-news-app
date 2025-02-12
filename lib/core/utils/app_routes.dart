import 'package:flutter/material.dart';
import 'package:lask_news_app/core/utils/routes.dart';
import 'package:lask_news_app/features/auth/presentation/views/signin_view.dart';
import 'package:lask_news_app/main_view.dart';
import 'package:lask_news_app/features/onboarding/presentation/views/onboarding_view.dart';

class AppRoutes {
  static Route<dynamic> onGeneratedRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onboardingView:
        return MaterialPageRoute(builder: (context) => OnboardingView());
      case Routes.mainView:
        return MaterialPageRoute(builder: (context) => MainView());
      case Routes.signinView:
        return MaterialPageRoute(builder: (context) => SigninView());
      default:
        return MaterialPageRoute(builder: (context) => Scaffold());
    }
  }
}
