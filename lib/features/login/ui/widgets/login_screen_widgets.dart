import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:promaison/core/helpers/extensions.dart';
import 'package:promaison/core/helpers/spacing.dart';
import 'package:promaison/core/theming/styles.dart';
import 'package:promaison/features/login/ui/widgets/login_components/conditions_text.dart';
import 'package:promaison/features/login/ui/widgets/login_components/login_button.dart';
import 'package:promaison/features/login/ui/widgets/login_components/login_text.dart';
import 'package:promaison/features/login/ui/widgets/login_components/phone_number_field.dart';

import '../../../../core/routing/routes.dart';

Widget loginWidgets(BuildContext context) {
  return Scaffold(
    backgroundColor: Colors.transparent,
    appBar: AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      actionsPadding: EdgeInsets.zero,
      iconTheme: const IconThemeData(color: Colors.white),
      leadingWidth: 20.w,
      title: GestureDetector(
        onTap: () {
          context.pushNamedAndRemoveUntil(
            Routes.homeScreen,
            predicate: (Route<dynamic> route) => false,
          );
        },
        child: Row(
          children: [
            const Icon(Icons.arrow_back),
            horizontalSpace(10),
            Text(
              'تخطي التسجيل',
              style: TextStyles.font17WhiteSemiBold,
            ),
          ],
        ),
      ),
    ),
    body: SingleChildScrollView(
      child: Column(
        children: [
          verticalSpace(200),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16.h),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 21.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  verticalSpace(27),
                  loginText(),
                  verticalSpace(20),
                  phoneNumberField(),
                  verticalSpace(20),
                  conditionsText(),
                  verticalSpace(27),
                  loginButton(context),
                  verticalSpace(16),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
