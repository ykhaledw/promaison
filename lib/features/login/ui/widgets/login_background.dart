import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget loginBackground() {
  return Column(
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
      Expanded(
        child: Container(
          color: Colors.white,
        ),
      ),
    ],
  );
}
