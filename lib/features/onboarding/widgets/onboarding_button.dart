import 'package:flutter/material.dart';
import 'package:promaison/core/shared_widgets/app_text_button.dart';
import 'package:promaison/core/theming/styles.dart';

Widget onBoardingButton(String text, VoidCallback onPressed,
    {Widget? suffixIcon}) {
  return appTextButton(
    onPressed: onPressed,
    buttonText: text,
    textStyle: TextStyles.font18WhiteExtraBold,
    suffixIcon: suffixIcon,
    horizontalPadding: 30,
  );
}
