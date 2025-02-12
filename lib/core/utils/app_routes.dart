import 'package:flutter/material.dart';

class AppRoutes {
   static Route<dynamic> onGeneratedRoute(RouteSettings settings) {
    switch(settings) {
      default:
      return MaterialPageRoute(builder: (context) => Scaffold());
    }
  }
}