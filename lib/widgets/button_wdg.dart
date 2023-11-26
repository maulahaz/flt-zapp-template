import 'package:flutter/material.dart';

import '../configs/x_configs.dart';
import '../helpers/x_helpers.dart';

class MyButtons {
  //--App Button Using Gradient
  static MaterialButton appPrimary(
      BuildContext context, String title, double width, Function() function) {
    return MaterialButton(
      minWidth: width,
      onPressed: function,
      child: Container(
        width: width,
        alignment: Alignment.center,
        padding: EdgeInsets.all(kDefaultPadding * 0.5), // 15
        decoration: BoxDecoration(
          gradient: kAppGradientPrim,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          border: Border.all(color: kAppPrimaryDark, width: 2)
        ),
        child: Text(title, style: getFont(16, color: kBlack)),
      ),
    );
  }

  //--CommonButton.defaultBtn
  static MaterialButton defaultBtn(
      BuildContext context, String text, double width, Function() function) {
    return MaterialButton(
      minWidth: width,
      padding: EdgeInsets.all(20),
      onPressed: function,
      child: Text(text,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20)
              .copyWith(color: kBlack, fontWeight: FontWeight.bold)),
    );
  }

  //--CommonButton.successBtn
  static MaterialButton successBtn(
      BuildContext context, String text, double width, Function() function) {
    return MaterialButton(
      minWidth: width,
      padding: EdgeInsets.all(20),
      onPressed: function,
      child: Text(text,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20)
              .copyWith(color: kBlack, fontWeight: FontWeight.bold)),
    );
  }
}