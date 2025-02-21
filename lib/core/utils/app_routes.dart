import 'package:flutter/material.dart';
import 'package:lask_news_app/core/utils/routes.dart';
import 'package:lask_news_app/features/auth/presentation/views/signin_view.dart';
import 'package:lask_news_app/features/auth/presentation/views/signup_view.dart';
import 'package:lask_news_app/features/home/domain/entities/news_entity.dart';
import 'package:lask_news_app/features/home/presentation/views/news_details_view.dart';
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
      case Routes.signupView:
        return MaterialPageRoute(builder: (context) => SignupView());
      case Routes.newsDetailsView:
        final newsEntity = settings.arguments as NewsEntity;
        return MaterialPageRoute(
            builder: (context) => NewsDetailsView(
                  newsEntity: newsEntity,
                ));
      default:
        return MaterialPageRoute(builder: (context) => Scaffold());
    }
  }
}
