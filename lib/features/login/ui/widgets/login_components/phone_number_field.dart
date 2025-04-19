import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/shared_widgets/app_text_form_field.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/styles.dart';

Widget phoneNumberField() {
  return SizedBox(
    width: double.infinity,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Expanded(
          child: appTextFormField(
            hintText: 'ادخل رقم الجوال هنا',
            validator: (value) {},
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black.withValues(alpha: 0.11),
                width: 1.3,
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.r),
                bottomLeft: Radius.circular(30.r),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black.withValues(alpha: 0.11),
                width: 1.3,
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.r),
                bottomLeft: Radius.circular(30.r),
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: AppColors.mainColor,
                width: 1.3,
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.r),
                bottomLeft: Radius.circular(30.r),
              ),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: AppColors.mainColor,
                width: 1.3,
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.r),
                bottomLeft: Radius.circular(30.r),
              ),
            ),
            keyboardType: TextInputType.number,
          ),
        ),
        Container(
          height: 58.h,
          width: 73.w,
          decoration: BoxDecoration(
            color: AppColors.mainColor,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(30.r),
              topRight: Radius.circular(30.r),
            ),
          ),
          child: Center(
            child: Text(
              '+21313',
              style: TextStyles.font17WhiteRegular,
            ),
          ),
        ),
      ],
    ),
  );
}
