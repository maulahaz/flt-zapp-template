import 'package:flutter/material.dart';

import 'configs/x_configs.dart';
import 'modules/features/x_features.dart';
import 'modules/home/x_homes.dart';
import 'modules/sliver_screen/x_sliver_screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // themeMode: ThemeMode.system,
      theme: MyThemes.lightMode,
      // theme: MyThemes.darkMode,
      darkTheme: MyThemes.darkMode,
      // home: SliverView(),
      routes: {
        '/': (context) => HomePage(),
        // '/signin': (context) => SigninPage(),
        // '/signup': (context) => SignupPage(),
        '/home': (context) => HomePage(),
        '/button': (context) => ButtonPage(),
        '/sliver': (context) => SliverView(),
      },
    );
  }
}