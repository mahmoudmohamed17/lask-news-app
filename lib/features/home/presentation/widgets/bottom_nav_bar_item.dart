import 'package:flutter/material.dart';
import 'package:lask_news_app/core/utils/app_colors.dart';

class BottomNavBarItem extends StatefulWidget {
  const BottomNavBarItem({super.key, required this.icon, required this.onTap});
  final IconData icon;
  final VoidCallback onTap;

  @override
  State<BottomNavBarItem> createState() => _BottomNavBarItemState();
}

class _BottomNavBarItemState extends State<BottomNavBarItem> {
  bool _isActive = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isActive = !_isActive;
        });
        widget.onTap.call();
      },
      child: Icon(
        widget.icon,
        size: 20,
        color: _isActive ? AppColors.primaryColor : Colors.black,
      ),
    );
  }
}
