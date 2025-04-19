import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/styles.dart';

Widget wrongActionIndicator() {
  return Padding(
    padding: EdgeInsets.only(top: 16.h, bottom: 20.h),
    child: Center(
      child: Container(
        width: 262.w,
        padding: EdgeInsetsDirectional.only(
          top: 12.h,
          bottom: 12.h,
          end: 8.w,
        ),
        decoration: BoxDecoration(
          color: AppColors.lightPurple.withValues(alpha: 0.13),
          borderRadius: BorderRadius.circular(6),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'الكود غير صحيح',
              style: TextStyles.font15Black50SemiBold.copyWith(
                color: AppColors.mainColor,
              ),
            ),
            horizontalSpace(8),
            const Icon(
              Icons.error,
              color: AppColors.mainColor,
            ),
          ],
        ),
      ),
    ),
  );
}
