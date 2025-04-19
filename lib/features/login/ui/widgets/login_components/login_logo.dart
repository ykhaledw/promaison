import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget loginLogo() {
  return Padding(
    padding: EdgeInsets.only(
      top: 65.h,
    ),
    child: Center(child: SvgPicture.asset('assets/svgs/promaison_logo.svg')),
  );
}
