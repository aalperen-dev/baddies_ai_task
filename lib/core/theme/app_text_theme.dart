import 'package:flutter/material.dart';

class AppTextTheme {
  static TextTheme get textTheme => TextTheme(
        displayLarge: TextStyle(
          fontFamily: 'Ambit',
          fontWeight: FontWeight.w700,
          fontSize: 32,
        ),
        displayMedium: TextStyle(
          fontFamily: 'Ambit',
          fontWeight: FontWeight.w600,
          fontSize: 28,
        ),
        displaySmall: TextStyle(
          fontFamily: 'Ambit',
          fontWeight: FontWeight.w400,
          fontSize: 24,
        ),
        headlineMedium: TextStyle(
          fontFamily: 'Ambit',
          fontWeight: FontWeight.w300,
          fontSize: 22,
        ),
        titleLarge: TextStyle(
          fontFamily: 'NeuePlak',
          fontWeight: FontWeight.w400,
          fontSize: 20,
        ),
        bodyLarge: TextStyle(
          fontFamily: 'Ambit',
          fontWeight: FontWeight.w400,
          fontSize: 18,
        ),
        bodyMedium: TextStyle(
          fontFamily: 'Ambit',
          fontWeight: FontWeight.w300,
          fontSize: 16,
        ),
      );
}

extension CustomTextTheme on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;
}
