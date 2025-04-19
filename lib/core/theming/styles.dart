import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:promaison/core/theming/colors.dart';
import 'package:promaison/core/theming/font_weight_helper.dart';

class TextStyles {
  static TextStyle font15GreyRegular = TextStyle(
    fontSize: 15.sp,
    color: Colors.grey,
    fontWeight: FontWeightHelper.regular,
  );

  static TextStyle font16BrownRegular = TextStyle(
    fontSize: 16.sp,
    color: AppColors.brown,
    fontWeight: FontWeightHelper.regular,
    fontFamily: 'Roboto',
  );

  static TextStyle font27OrangeBold = TextStyle(
    fontSize: 27.sp,
    color: AppColors.mainColor,
    fontWeight: FontWeightHelper.bold,
  );

  static TextStyle font15Black50SemiBold = TextStyle(
    fontSize: 15.sp,
    color: Colors.black.withValues(alpha: 0.5),
    fontWeight: FontWeightHelper.semiBold,
  );

  static TextStyle font18WhiteExtraBold = TextStyle(
    fontSize: 18.sp,
    color: Colors.white,
    fontWeight: FontWeightHelper.extraBold,
  );

  static TextStyle font17WhiteSemiBold = TextStyle(
    fontSize: 17.sp,
    color: Colors.white,
    fontWeight: FontWeightHelper.semiBold,
  );

  static TextStyle font24BlackExtraBold = TextStyle(
    fontSize: 24.sp,
    color: Colors.black,
    fontWeight: FontWeightHelper.extraBold,
  );

  static TextStyle font18BlackSemiBold = TextStyle(
    fontSize: 18.sp,
    color: Colors.black,
    fontWeight: FontWeightHelper.semiBold,
  );

  static TextStyle font17WhiteRegular = TextStyle(
    fontSize: 17.sp,
    color: Colors.white,
    fontWeight: FontWeightHelper.regular,
  );

  static TextStyle font16darkGreySemiBold = TextStyle(
    fontSize: 16.sp,
    color: AppColors.darkGrey,
    fontWeight: FontWeightHelper.semiBold,
  );
}
