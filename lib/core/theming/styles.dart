import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:promaison/core/theming/colors.dart';
import 'package:promaison/core/theming/font_weight_helper.dart';

class TextStyles {
  static TextStyle font16BrownRegular = TextStyle(
    fontSize: 16.sp,
    color: AppColors.brown,
    fontWeight: FontWeightHelper.regular,
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
}
