import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'onboarding_bold_text.dart';
import 'onboarding_button.dart';
import 'onboarding_logos.dart';
import 'onboarding_main_text.dart';
import 'onboarding_subtitle.dart';
import 'promaison_logo.dart';

Widget onBoardingComponents({
  required String imagePath,
  required String boldText,
  required String subtitle,
  required String buttonText,
  required void Function() onTap,
  Widget? suffixIcon,
  String? secondLogoPath,
}) {
  return Padding(
    padding: EdgeInsets.only(top: 13.h),
    child: Column(
      children: [
        promaisonLogo(),
        SizedBox(
          height: 12.h,
        ),
        onboardingLogo(imagePath, secondLogoPath: secondLogoPath),
        SizedBox(
          height: 26.h,
        ),
        onboardingMainText(),
        SizedBox(
          height: 15.h,
        ),
        onBoardingBoldText(boldText),
        SizedBox(
          height: 16.h,
        ),
        onboardingSubtitle(subtitle),
        SizedBox(
          height: 67.h,
        ),
        onBoardingButton(
          buttonText,
          onTap,
          suffixIcon: suffixIcon,
        ),
      ],
    ),
  );
}
