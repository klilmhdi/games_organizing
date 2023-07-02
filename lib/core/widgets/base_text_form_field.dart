import 'package:flutter/material.dart';
import 'package:games_organizing/core/extensions/extensions.dart';
import '../resources/manager_color.dart';
import '../resources/manager_fonts.dart';
import '../resources/manager_styles.dart';
import '../resources/managers_size.dart';

TextFormField baseTextFormField({
  required TextEditingController controller,
  String? hintText,
  TextInputType? keyboardType,
  bool? obscureText,
  validator,
  Widget? icon,
  Widget? prefixIcon,
  Color? outlineInputBorder,
}) {
  return TextFormField(
    style: getRegularTextStyle(
      fontSize: ManagerFontSize.s16,
      color: ManagerColors.black,
    ),
    textAlign: TextAlign.start,
    textDirection:
        TextDirection.rtl, //TODO:this will be Checked by the app language
    controller: controller,
    keyboardType: keyboardType,
    cursorColor: ManagerColors.primaryColor,
    obscureText: obscureText.onNull(),
    validator: validator,
    decoration: InputDecoration(
      suffixIcon: prefixIcon, //
      prefixIcon: icon.onNull(),
      suffixIconColor: ManagerColors.grey,
      filled: true,
      contentPadding: EdgeInsets.symmetric(
        // horizontal: ManagerWidth.w16,
        vertical: ManagerHeight.h6,
      ),
      fillColor: ManagerColors.greyWhite,
      hintText: hintText.onNull(),
      hintTextDirection:
          TextDirection.rtl, //TODO: this will be Checked by the app language
      hintStyle: getRegularTextStyle(
        fontSize: ManagerFontSize.s16,
        color: ManagerColors.grey,
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: outlineInputBorder ?? ManagerColors.white,
        ),
        borderRadius: BorderRadius.circular(
          ManagerRadius.r6,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: ManagerColors.primaryColor,
        ),
        borderRadius: BorderRadius.circular(
          ManagerRadius.r6,
        ),
      ),
    ),
  );
}
