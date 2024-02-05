import 'package:flutter/material.dart';

//--App Colors:
// --------------------------------------------------
const kPrimary = Color.fromARGB(255, 90, 122, 124);
const kSecondary = Color.fromARGB(255, 75, 128, 103);
const kSuccess = Color(0xFF28A745);
const kDanger = Color(0xFFDC3545);
const kWarning = Color(0xFFFFC107);
const kInfo = Color(0xFF17A2B8);
const kLight = Color(0xFFF8F9FA);
const kDark = Color(0xFF343A40);
// const kBG1 = Color.fromARGB(255, 201, 202, 204);

//--Main Colors (MaterialColor):
// --------------------------------------------------
const kWhite = Colors.white;
const kBlack = Colors.black;
const kTransparent = Colors.transparent;
const kRed = Colors.red;
const kGreen = Colors.green;
const kBlue = Colors.blue;
const kYellow = Colors.yellow;
const kGrey = Colors.grey;

//--Bootstrap Color Standards: (Primary, Secondary,Success,Danger,Warnig,Info,Light,Dark)
// --------------------------------------------------
const kBSPrimary = Color(0xFF007BFF);
const kBSSecondary = Color(0xFF6C757D);
const kBSSuccess = Color(0xFF28A745);
const kBSDanger = Color(0xFFDC3545);
const kBSWarning = Color(0xFFFFC107);
const kBSInfo = Color(0xFF17A2B8);
const kBSLight = Color(0xFFF8F9FA);
const kBSDark = Color(0xFF343A40);

//--Gradient:
// --------------------------------------------------
const kGradientPrimary = LinearGradient(
  colors: [kPrimary, kWhite, kPrimary],
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
);

const kGradient2 = LinearGradient(
  colors: [kInfo, kWhite],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
);