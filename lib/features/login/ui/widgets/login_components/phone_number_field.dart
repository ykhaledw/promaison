import 'dart:developer';

import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:promaison/core/helpers/spacing.dart';

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
          CountryPickerDropdown(
            onValuePicked: (value) {
              log(value.name);
            },
            icon: const SizedBox.shrink(),
            selectedItemBuilder: (country) {
              return Container(
                decoration: BoxDecoration(
                  color: AppColors.mainColor,
                  borderRadius: BorderRadiusDirectional.only(
                    bottomStart: Radius.circular(30.r),
                    topStart: Radius.circular(30.r),
                  ),
                ),
                padding: EdgeInsets.symmetric(horizontal: 18.h),
                child: Center(
                  child: Text(
                    "+${country.phoneCode}",
                    style: TextStyles.font17WhiteRegular,
                  ),
                ),
              );
            },
            itemHeight: 60.h,
            itemBuilder: (country) {
              return Row(
                children: <Widget>[
                  CountryPickerUtils.getDefaultFlagImage(country),
                  horizontalSpace(8),
                  Text("+${country.phoneCode}"),
                ],
              );
            },
          ),
          Expanded(
            child: appTextFormField(
              hintText: S.of(context).enterYourNumber,
              validator: (value) {},
              enabledBorder: InputBorder.none,
              keyboardType: TextInputType.number,
              contentPadding: EdgeInsets.zero,
            ),
          ),
        ],
      ),
    ),
  );
}
