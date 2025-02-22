import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lask_news_app/core/funcs/check_initial_route.dart';
import 'package:lask_news_app/core/services/get_it_service.dart';
import 'package:lask_news_app/core/services/shared_prefs.dart';
import 'package:lask_news_app/core/utils/app_routes.dart';
import 'package:lask_news_app/core/utils/weather_manager.dart';
import 'package:lask_news_app/custom_bloc_observer.dart';
import 'package:lask_news_app/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Future.wait([
    Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    ),
    SharedPrefs.init(),
    WeatherManager.getWeather(),
  ]);
  setupLocator();
  Bloc.observer = CustomBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: checkInitialRoute(),
      onGenerateRoute: AppRoutes.onGeneratedRoute,
    );
  }
}
