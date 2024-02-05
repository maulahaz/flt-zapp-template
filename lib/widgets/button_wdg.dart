import 'package:flutter/material.dart';

import '../configs/x_configs.dart';
import '../helpers/x_helpers.dart';

class MyButtons {
  static Widget showMyButtons(
    BuildContext context,
    String label,
    Color txColor,
    Color bgColor,
    Function() function, {
    required bool outlined,
    required bool gradiented,
    bool isLoading = false,
  }) {
    //--USING MATERIAL BUTTON (will take all Width):
    //----------------------------------------------------------------
    return MaterialButton(
      onPressed: function,
      hoverColor: kTransparent,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(kDefaultPadding * 0.5),
        decoration: BoxDecoration(
            color: outlined ? kTransparent : bgColor,
            gradient: gradiented ? kGradientPrimary : null,
            borderRadius: BorderRadius.all(Radius.circular(10)),
            border: outlined ? Border.all(color: bgColor, width: 2) : null),
        child: isLoading
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      width: 24,
                      height: 24,
                      child: CircularProgressIndicator(color: kPrimary)),
                  SizedBox(width: 10),
                  Text(label, style: getFont(16, color: txColor)),
                ],
              )
            : Text(label, style: getFont(16, color: txColor)),
      ),
    );
  }

  static Widget primary(
      BuildContext context, String label, Function() function) {
    return showMyButtons(context, label, kWhite, kInfo, function,
        outlined: false, gradiented: false);
  }

  static Widget warning(
      BuildContext context, String label, Function() function) {
    return showMyButtons(context, label, kBlack, kWarning, function,
        outlined: false, gradiented: false);
  }

  static Widget danger(
      BuildContext context, String label, Function() function) {
    return showMyButtons(context, label, kWhite, kRed, function,
        outlined: false, gradiented: false);
  }

  static Widget disabled(BuildContext context, String label) {
    return showMyButtons(context, label, kWhite, kGrey, () {},
        outlined: false, gradiented: false);
  }

  static Widget isLoading(BuildContext context, String label) {
    return showMyButtons(context, label, kWhite, kGrey, () {},
        outlined: false, gradiented: false, isLoading: true);
  }

  static Widget primaryOutlined(
      BuildContext context, String label, Function() function) {
    return showMyButtons(context, label, kBlack, kInfo, function,
        outlined: true, gradiented: false);
  }

  static Widget dangerOutlined(
      BuildContext context, String label, Function() function) {
    return showMyButtons(context, label, kRed, kRed, function,
        outlined: true, gradiented: false);
  }

  static Widget primaryGradiented(
      BuildContext context, String label, Function() function) {
    return showMyButtons(context, label, kBlack, kInfo, function,
        outlined: false, gradiented: true);
  }
}

//---------------------------------------------------------------
class MyButtons2 {
  static Widget showMyButtons(
    BuildContext context,
    String label,
    Color txColor,
    Color bgColor,
    Function() function, {
    required bool outlined,
    required bool gradiented,
    bool isLoading = false,
  }) {
    return ElevatedButton(
      onPressed: function,
      // child: Text(label, style: getFont(16, color: kBlack)),
      child: Text(label),
      style: ElevatedButton.styleFrom(
        backgroundColor: outlined ? kTransparent : bgColor,
        // side: outlined ? BorderSide(width: 2, color: bgColor) : null,
        // shape: RoundedRectangleBorder(
        //   borderRadius: BorderRadius.circular(10),
        // ),
      ),
    );
  }

  static Widget primary(
      BuildContext context, String label, Function() function) {
    return showMyButtons(context, label, kWhite, kBSPrimary, function,
        outlined: false, gradiented: false);
  }

  static Widget danger(
      BuildContext context, String label, Function() function) {
    return showMyButtons(context, label, kWhite, kBSDanger, function,
        outlined: false, gradiented: false);
  }
}

