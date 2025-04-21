import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/shared_widgets/app_text_form_field.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/styles.dart';
import '../../../../../generated/l10n.dart';

Widget phoneNumberField(BuildContext context) {
  return SizedBox(
    width: double.infinity,
    child: Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black.withValues(alpha: 0.11),
          width: 1.3,
        ),
        borderRadius: BorderRadius.circular(30.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            // height: 58.h,
            width: 73.w,
            decoration: BoxDecoration(
              color: AppColors.mainColor,
              borderRadius: BorderRadiusDirectional.only(
                bottomStart: Radius.circular(30.r),
                topStart: Radius.circular(30.r),
              ),
            ),
            padding: EdgeInsets.symmetric(vertical: 18.h),
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
              enabledBorder: InputBorder.none,
              keyboardType: TextInputType.number,
            ),
          ),
        ],
      ),
    ),
  );
}
