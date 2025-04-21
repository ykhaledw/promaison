import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/styles.dart';
import '../../../../../generated/l10n.dart';

Widget wrongActionIndicator(BuildContext context) {
  return Padding(
    padding: EdgeInsets.only(top: 16.h, bottom: 20.h),
    child: Center(
      child: Container(
        width: 262.w,
        padding: EdgeInsetsDirectional.only(
          top: 12.h,
          bottom: 12.h,
          start: 8.w,
        ),
        decoration: BoxDecoration(
          color: AppColors.lightPurple.withValues(alpha: 0.13),
          borderRadius: BorderRadius.circular(6),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Icon(
              Icons.error,
              color: AppColors.mainColor,
            ),
            horizontalSpace(8),
            Text(
              S.of(context).wrongCode,
              style: TextStyles.font15Black50SemiBold.copyWith(
                color: AppColors.mainColor,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
