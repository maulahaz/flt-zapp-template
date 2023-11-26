import 'package:flutter/material.dart';

import 'configs/x_configs.dart';
import 'modules/x_modules.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App!!',
      theme: MyThemes.lightMode,
      darkTheme: MyThemes.darkMode,
      home: const ModulesView(),
      debugShowCheckedModeBanner: false,
    );
  }
}