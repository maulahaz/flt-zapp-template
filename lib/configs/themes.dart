import 'package:flutter/material.dart';

import 'x_configs.dart';

class MyThemes {
  static final lightMode = ThemeData(
      colorScheme: ThemeData().colorScheme.copyWith(primary: kRed),
      fontFamily: 'Poppins',
    //   appBarTheme: AppBarTheme(foregroundColor: kBlack),
      inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
              borderSide: BorderSide.none),
          filled: true,
          fillColor: Colors.grey.withOpacity(0.1)));

  static final darkMode = ThemeData(
      colorScheme: ThemeData().colorScheme.copyWith(primary: kGrey),
      fontFamily: 'Poppins',
      inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
              borderSide: BorderSide.none),
          filled: true,
          fillColor: Colors.grey.withOpacity(0.1)));
}
