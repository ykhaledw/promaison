import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget loginBackground() {
  return Column(
    children: [
      Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/images/login_background_image.png',
                width: double.infinity,
                fit: BoxFit.fitWidth,
              ),
              Container(
                color: Colors.black.withValues(alpha: 0.5),
                height: 410.h,
                width: double.infinity,
              ),
            ],
          ),
          SvgPicture.asset('assets/svgs/promaison_logo.svg')
        ],
      ),
      Expanded(
        child: Container(
          color: Colors.white,
        ),
      ),
    ],
  );
}
