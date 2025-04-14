import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget onboardingLogo(String logoPath) {
  return SizedBox(
    height: 404.h,
    width: 428.w,
    child: SvgPicture.asset(logoPath),
  );
}
