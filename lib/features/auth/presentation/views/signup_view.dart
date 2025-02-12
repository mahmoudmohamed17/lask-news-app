import 'package:flutter/material.dart';
import 'package:lask_news_app/core/utils/routes.dart';
import 'package:lask_news_app/features/auth/presentation/widgets/signup_view_body.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});
  static const String id = Routes.signupView;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SignupViewBody(),
    );
  }
}