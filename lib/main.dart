import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lask_news_app/core/funcs/check_app_flow.dart';
import 'package:lask_news_app/core/services/get_it_service.dart';
import 'package:lask_news_app/core/services/shared_prefs.dart';
import 'package:lask_news_app/core/utils/app_routes.dart';
import 'package:lask_news_app/custom_bloc_observer.dart';
import 'package:lask_news_app/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await SharedPrefs.init();
  getIteService();
  Bloc.observer = CustomBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute:
          checkAppFlow(), // to avoid view onboarding and auth every time I open the app
      onGenerateRoute: AppRoutes.onGeneratedRoute,
    );
  }
}
