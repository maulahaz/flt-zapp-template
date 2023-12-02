import 'package:flutter/material.dart';

import '../configs/x_configs.dart';
import '../helpers/x_helpers.dart';

class MyButtonsXX {
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
            border: Border.all(color: kAppPrimaryDark, width: 2)),
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

  //--CommonButton.filledBtn
  static ElevatedButton filledBtn(
    BuildContext context,
    String label,
    Widget? icon,
    Function()? function,
  ) {
    return ElevatedButton(
      onPressed: function ?? null,
      style: ElevatedButton.styleFrom(
        backgroundColor: kAppPrimary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon ?? SizedBox.shrink(),
          if (icon != null) const SizedBox(width: 10.0),
          Text(
            label,
            style: TextStyle(
              color: kWhite,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  //--CommonButton.outlined
  static OutlinedButton outlined(
    BuildContext context,
    {required String label,
    Widget? icon,
    Function()? function}
  ) {
    return OutlinedButton(
              onPressed: function ?? null,
              style: OutlinedButton.styleFrom(
                backgroundColor: kWhite,
                side: const BorderSide(color: kGrey),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6.0),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  icon ?? const SizedBox.shrink(),
                  if (icon != null) const SizedBox(width: 10.0),
                  Text(
                    label,
                    style: TextStyle(
                      color: kBlack,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
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

enum ButtonStyle { filled, outlined }

class MyButtons extends StatelessWidget {
  const MyButtons.filled({
    super.key,
    required this.onPressed,
    required this.label,
    this.style = ButtonStyle.filled,
    this.color = kAppPrimary,
    this.textColor = Colors.white,
    this.width = double.infinity,
    this.height = 50.0,
    this.borderRadius = 6.0,
    this.icon,
    this.disabled = false,
    this.fontSize = 16.0,
  });

  const MyButtons.outlined({
    super.key,
    required this.onPressed,
    required this.label,
    this.style = ButtonStyle.outlined,
    this.color = kWhite,
    this.textColor = kBlack,
    this.width = double.infinity,
    this.height = 50.0,
    this.borderRadius = 6.0,
    this.icon,
    this.disabled = false,
    this.fontSize = 16.0,
  });

  final Function() onPressed;
  final String label;
  final ButtonStyle style;
  final Color color;
  final Color textColor;
  final double width;
  final double height;
  final double borderRadius;
  final Widget? icon;
  final bool disabled;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: style == ButtonStyle.filled
          ? ElevatedButton(
              onPressed: disabled ? null : onPressed,
              style: ElevatedButton.styleFrom(
                backgroundColor: color,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(borderRadius),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  icon ?? const SizedBox.shrink(),
                  if (icon != null) const SizedBox(width: 10.0),
                  Text(
                    label,
                    style: TextStyle(
                      color: textColor,
                      fontSize: fontSize,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            )
          : OutlinedButton(
              onPressed: disabled ? null : onPressed,
              style: OutlinedButton.styleFrom(
                backgroundColor: color,
                side: const BorderSide(color: Colors.grey),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6.0),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  icon ?? const SizedBox.shrink(),
                  if (icon != null) const SizedBox(width: 10.0),
                  Text(
                    label,
                    style: TextStyle(
                      color: textColor,
                      fontSize: fontSize,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
