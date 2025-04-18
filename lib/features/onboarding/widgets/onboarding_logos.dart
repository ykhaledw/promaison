import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget onboardingLogo(String logoPath, {String? secondLogoPath}) {
  return SizedBox(
    height: 404.h,
    width: 428.w,
    child: Stack(
      alignment: Alignment.centerLeft,
      children: [
        SvgPicture.asset(logoPath),
        if (secondLogoPath != null)
          Align(
            alignment: Alignment.bottomRight,
            child: SvgPicture.asset(secondLogoPath),
          ),
      ],
    ),
  );
}
