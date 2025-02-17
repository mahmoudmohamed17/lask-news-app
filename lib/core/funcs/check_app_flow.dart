import 'package:lask_news_app/constanst.dart';
import 'package:lask_news_app/core/services/shared_prefs.dart';
import 'package:lask_news_app/core/utils/routes.dart';

String? checkInitialRoute() {
  return SharedPrefs.getBool(isOnboardingSeen)
      ? SharedPrefs.getBool(isUserAuthenticated)
          ? Routes.mainView
          : Routes.signinView
      : Routes.onboardingView;
}
