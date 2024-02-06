import 'package:flutter/material.dart';

import 'x_configs.dart';

class MyThemes {
  static final lightMode = ThemeData(
    colorScheme: ThemeData().colorScheme.copyWith(primary: kPrimary),
    fontFamily: 'Poppins',
    appBarTheme: AppBarTheme(foregroundColor: kYellow),
    scaffoldBackgroundColor: kPrimary.withOpacity(0.3),
    //--Form Input
    inputDecorationTheme: InputDecorationTheme(
      border: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        borderSide: BorderSide(color: Colors.grey),
      ),
      // filled: true,
      // fillColor: Colors.yellow
    ),
  );

  static final darkMode = ThemeData(
    colorScheme: ThemeData().colorScheme.copyWith(primary: kYellow),
    fontFamily: 'Poppins',
    appBarTheme: AppBarTheme(foregroundColor: kRed),
    scaffoldBackgroundColor: kWhite,
    //--Form Input
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
          borderSide: BorderSide.none),
      filled: true,
      fillColor: Colors.grey.withOpacity(0.1),
    ),
  );
}
