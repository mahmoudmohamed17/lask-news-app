import 'package:flutter/material.dart';
import 'package:lask_news_app/core/utils/app_colors.dart';
import 'package:lask_news_app/core/utils/styles.dart';

class CustomAuthButton extends StatelessWidget {
  const CustomAuthButton({super.key, required this.label, this.onPressed});
  final String label;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryColor,
        elevation: 0,
        shadowColor: Colors.transparent,
      ),
      child: Text(
        label,
        style: Styles.semiBold20.copyWith(color: Colors.white),
      ),
    );
  }
}
