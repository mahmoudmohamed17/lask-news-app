import 'package:flutter/material.dart';
import 'package:lask_news_app/core/utils/routes.dart';
import 'package:lask_news_app/features/main_view/presentation/views/main_view.dart';
import 'package:lask_news_app/features/onboarding/presentation/views/onboarding_view.dart';

class AppRoutes {
  static Route<dynamic> onGeneratedRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onboarding:
        return MaterialPageRoute(builder: (context) => OnboardingView());
      case Routes.mainView:
        return MaterialPageRoute(builder: (context) => MainView());
      default:
        return MaterialPageRoute(builder: (context) => Scaffold());
    }
  }
}
