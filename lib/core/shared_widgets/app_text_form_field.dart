import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/colors.dart';
import '../theming/styles.dart';

Widget appTextFormField({
  TextEditingController? controller,
  EdgeInsetsGeometry? contentPadding,
  InputBorder? focusedBorder,
  InputBorder? enabledBorder,
  InputBorder? errorBorder,
  InputBorder? focusedErrorBorder,
  TextStyle? hintStyle,
  required String hintText,
  Widget? suffixIcon,
  Color? backgroundColor,
  required Function(String?) validator,
  TextInputType? keyboardType,
}) {
  return TextFormField(
    controller: controller,
    textAlign: TextAlign.end,
    keyboardType: keyboardType,
    decoration: InputDecoration(
      isDense: true,
      contentPadding: contentPadding ??
          EdgeInsetsDirectional.only(top: 15.h, bottom: 15.h, end: 22.w),
      focusedBorder: focusedBorder ??
          OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white.withValues(alpha: 0.11),
              width: 1.3,
            ),
            borderRadius: BorderRadius.circular(30),
          ),
      enabledBorder: enabledBorder ??
          OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black.withValues(alpha: 0.11),
              width: 1.3,
            ),
            borderRadius: BorderRadius.circular(30),
          ),
      errorBorder: errorBorder ?? OutlineInputBorder(
        borderSide: const BorderSide(
          color: AppColors.mainColor,
          width: 1.3,
        ),
        borderRadius: BorderRadius.circular(30),
      ),
      focusedErrorBorder: focusedErrorBorder ?? OutlineInputBorder(
        borderSide: const BorderSide(
          color: AppColors.mainColor,
          width: 1.3,
        ),
        borderRadius: BorderRadius.circular(30),
      ),
      hintStyle: hintStyle ?? TextStyles.font15GreyRegular,
      hintText: hintText,
      suffixIcon: suffixIcon,
      fillColor: backgroundColor ?? Colors.transparent,
      filled: true,
    ),
    style: TextStyles.font18BlackSemiBold,
    validator: (value) {
      return validator(value);
    },
  );
}
