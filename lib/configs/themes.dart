import 'package:flutter/material.dart';

import 'x_configs.dart';

class MyThemes {
  static final lightMode = ThemeData(
      primaryColor: ThemeData.light().scaffoldBackgroundColor,
      colorScheme: ColorScheme.light().copyWith(
        primary: kPrimary,
        secondary: kSecondary
      ),
      brightness: Brightness.light,
      fontFamily: 'Poppins',
      inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
              borderSide: BorderSide.none),
          filled: true,
          fillColor: Colors.grey.withOpacity(0.1)));

  static final darkMode = ThemeData(
      primaryColor: ThemeData.light().scaffoldBackgroundColor,
      brightness: Brightness.dark,
      fontFamily: 'Poppins',
      inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
              borderSide: BorderSide.none),
          filled: true,
          fillColor: Colors.grey.withOpacity(0.1)));
}
