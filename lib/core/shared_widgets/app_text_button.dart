import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:promaison/core/theming/colors.dart';

Widget appTextButton({
  double? borderRadius,
  Color? backgroundColor,
  double? horizontalPadding,
  double? verticalPadding,
  double? buttonWidth,
  double? buttonHeight,
  required VoidCallback onPressed,
  required String buttonText,
  required TextStyle textStyle,
  Widget? suffixIcon,
}) {
  return TextButton(
    style: ButtonStyle(
      shape: WidgetStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 30),
        ),
      ),
      backgroundColor:
          WidgetStatePropertyAll(backgroundColor ?? AppColors.mainColor),
      padding: WidgetStateProperty.all<EdgeInsets>(
        EdgeInsets.symmetric(
            horizontal: horizontalPadding?.w ?? 12.w,
            vertical: verticalPadding?.h ?? 18.h),
      ),
      fixedSize: WidgetStateProperty.all(
        Size(
          buttonWidth?.w ?? double.maxFinite,
          buttonHeight?.h ?? 62.h,
        ),
      ),
    ),
    onPressed: onPressed,
    child: Row(
      children: [
        const SizedBox(),
        const Spacer(),
        Text(
          buttonText,
          style: textStyle,
        ),
        const Spacer(),
        suffixIcon ?? const SizedBox.shrink(),
      ],
    ),
  );
}
