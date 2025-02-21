import 'package:flutter/material.dart';

class SearchTapModel {
  final String label;
  final bool isActive;
  final VoidCallback onTap;

  SearchTapModel(
      {required this.label, required this.isActive, required this.onTap});
}
