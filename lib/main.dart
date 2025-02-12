import 'package:flutter/material.dart';
import 'package:lask_news_app/core/utils/app_routes.dart';
import 'package:lask_news_app/core/utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.onboarding,
      onGenerateRoute: AppRoutes.onGeneratedRoute,
    );
  }
}
