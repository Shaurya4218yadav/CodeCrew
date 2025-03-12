import 'package:flutter/material.dart';

class AppColors {
  static const primary = Color(0xFF582CA8);
  static const background = Color(0xFFFFFFFFF);
  static const text = Color(0xFF000000);
  static const textSecondary = Color(0xFF666666);
  static const border = Color(0xFFEAEAEA);
  static const error = Color(0xFFFF0000);
}

extension ContextExtension on BuildContext {
  void showSnackBar(String message, {bool isError = false}) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: isError ? AppColors.error : AppColors.primary,
      ),
    );
  }
}