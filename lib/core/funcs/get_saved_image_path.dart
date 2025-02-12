import 'package:lask_news_app/constanst.dart';
import 'package:lask_news_app/core/services/shared_prefs.dart';

String getSavedImagePath() {
  return SharedPrefs.getString(savedImage);
}
