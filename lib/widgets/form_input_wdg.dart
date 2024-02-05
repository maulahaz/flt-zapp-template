import 'package:flutter/material.dart';

class FormInput {
  static Widget showFormInput(
    BuildContext context, {
    required TextEditingController controller,
    required String label,
    required bool showLabel,
    bool? obscureText,
    TextInputType? keyboardType,
    Widget? suffixIcon,
    Function(String value)? onChanged,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (showLabel) ...[
          Text(
            label,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 12.0),
        ],
        TextFormField(
          controller: controller,
          onChanged: onChanged,
          obscureText: obscureText ?? false,
          keyboardType: keyboardType,
          decoration: InputDecoration(
            suffixIcon: suffixIcon,
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              borderSide: BorderSide(color: Colors.grey),
            ),
            enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              borderSide: BorderSide(color: Colors.grey),
            ),
            hintText: label,
          ),
        ),
      ],
    );
  }

  static Widget text(
    BuildContext context,
    TextEditingController controller,
    String label,
    Function(String value)? onChanged,
  ) {
    return showFormInput(
      context,
      controller: controller,
      label:label,
      showLabel:true,
      obscureText:false,
      keyboardType:TextInputType.text,
      suffixIcon:SizedBox.shrink(),
      onChanged:onChanged ?? null,
    );
  }
}
