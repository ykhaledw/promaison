import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:promaison/core/helpers/extensions.dart';

import '../../generated/l10n.dart';
import '../helpers/spacing.dart';
import '../theming/colors.dart';
import '../theming/styles.dart';

void showTermsAndConditionsDialog(BuildContext context) {
  showDialog(
    barrierColor: Colors.white,
    context: context,
    builder: (builder) => Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      context.pop();
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border:
                            Border.all(color: AppColors.lightGrey, width: 2.w),
                      ),
                      padding: EdgeInsets.all(18.w),
                      child: Padding(
                        padding: EdgeInsetsDirectional.only(start: 8.h),
                        child: const Icon(
                          Icons.arrow_back_ios,
                          color: AppColors.lightGrey,
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Text(
                    S.of(context).termsAndConditions,
                    style: TextStyles.font24BlackExtraBold
                        .copyWith(fontSize: 20.sp),
                  ),
                  const Spacer(
                    flex: 2,
                  ),
                ],
              ),
              verticalSpace(30),
              termsAndConditionsBody(context),
            ],
          ),
        ),
      ),
    ),
  );
}

Widget termsAndConditionsBody(BuildContext context) {
  return Column(
    children: [
      termsAndConditionsSection(context, S.of(context).introduction,
          S.of(context).introductionContent),
      verticalSpace(50),
      termsAndConditionsSection(
          context, S.of(context).copyrights, S.of(context).copyrightsContent),
      verticalSpace(50),
      termsAndConditionsSection(context, S.of(context).privacyPolicy,
          S.of(context).privacyPolicyContent),
      verticalSpace(100),
    ],
  );
}

Widget termsAndConditionsSection(
    BuildContext context, String title, String content) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        title,
        style: TextStyles.font18WhiteExtraBold.copyWith(
          color: Colors.black,
        ),
      ),
      verticalSpace(12),
      Text(
        content,
        style: TextStyles.font15GreyRegular,
      ),
    ],
  );
}
