import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:promaison/core/helpers/extensions.dart';

import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/styles.dart';
import '../../../../../generated/l10n.dart';

Widget conditionsText(BuildContext context) {
  return RichText(
    textAlign: TextAlign.start,
    text: TextSpan(
      children: [
        TextSpan(
          text: S.of(context).conditionsText,
          style: TextStyles.font15GreyRegular,
        ),
        TextSpan(
          text: '  (${S.of(context).readConditions})',
          style:
              TextStyles.font15GreyRegular.copyWith(color: AppColors.mainColor),
          recognizer: TapGestureRecognizer()
            ..onTap = () {
              showDialog(
                barrierColor: Colors.white,
                context: context,
                builder: (builder) => Scaffold(
                  body: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.h),
                    child: Column(
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
                                  border: Border.all(
                                      color: AppColors.lightGrey, width: 2.w),
                                ),
                                padding: EdgeInsets.all(18.w),
                                child: Padding(
                                  padding:
                                      EdgeInsetsDirectional.only(start: 8.h),
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
                            const Spacer(),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
        ),
      ],
    ),
  );
  // return Column(
  //   crossAxisAlignment: CrossAxisAlignment.start,
  //   children: [
  //     Text(
  //       S.of(context).conditionsText,
  //       style: TextStyles.font15GreyRegular,
  //       textAlign: TextAlign.start,
  //     ),
  //     Row(
  //       mainAxisAlignment: MainAxisAlignment.end,
  //       children: [
  //         Text(
  //           '(${S.of(context).readConditions})',
  //           style: TextStyles.font15GreyRegular
  //               .copyWith(color: AppColors.mainColor),
  //           textAlign: TextAlign.end,
  //         ),
  //       ],
  //     ),
  //   ],
  // );
}
