import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget onboardingLogo(String logoPath, {String? secondLogoPath}) {
  return SizedBox(
    height: 404.h,
    width: 428.w,
    child: Stack(
      alignment: AlignmentDirectional.centerEnd,
      children: [
        Align(
          alignment: secondLogoPath != null
              ? Alignment.centerRight
              : AlignmentDirectional.center,
          child: Image.asset(logoPath),
        ),
        if (secondLogoPath != null)
          Align(
            alignment: Alignment.bottomLeft,
            child: Image.asset(secondLogoPath),
          ),
      ],
    ),
  );
}
