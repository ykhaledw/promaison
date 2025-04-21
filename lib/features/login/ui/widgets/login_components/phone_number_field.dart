import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/shared_widgets/app_text_form_field.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/styles.dart';
import '../../../../../generated/l10n.dart';

Widget phoneNumberField(BuildContext context) {
  return SizedBox(
    width: double.infinity,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 58.h,
          width: 73.w,
          decoration: BoxDecoration(
            color: AppColors.mainColor,
            borderRadius: BorderRadiusDirectional.only(
              bottomStart: Radius.circular(30.r),
              topStart: Radius.circular(30.r),
            ),
          ),
          child: Center(
            child: Text(
              '+21313',
              style: TextStyles.font17WhiteRegular,
            ),
          ),
        ),
        Expanded(
          child: appTextFormField(
            hintText: S.of(context).enterYourNumber,
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
      ],
    ),
  );
}
