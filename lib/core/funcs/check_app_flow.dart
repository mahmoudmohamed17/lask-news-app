import 'package:lask_news_app/constanst.dart';
import 'package:lask_news_app/core/services/shared_prefs.dart';
import 'package:lask_news_app/core/utils/routes.dart';

String? checkAppFlow() {
  return SharedPrefs.getBool(isOnboardingSeen)
      ? SharedPrefs.getBool(isUserAuthenticaed)
          ? Routes.mainView
          : Routes.signinView
      : Routes.onboardingView;
}
