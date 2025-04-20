import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:promaison/features/login/ui/widgets/sms_screen_components/confirm_button.dart';
import 'package:promaison/features/login/ui/widgets/sms_screen_components/otp_field.dart';
import 'package:promaison/features/login/ui/widgets/sms_screen_components/resend_code_button.dart';
import 'package:promaison/features/login/ui/widgets/sms_screen_components/resend_code_timer.dart';
import 'package:promaison/features/login/ui/widgets/sms_screen_components/sms_screen_text.dart';
import 'package:promaison/features/login/ui/widgets/sms_screen_components/wrong_action_indicator.dart';
import '../../../../core/helpers/spacing.dart';

Widget smsCodeWidgets(
  BuildContext context, {
  required List<TextEditingController> controllers,
  required List<FocusNode> focusNodes,
}) {
  return Scaffold(
    backgroundColor: Colors.transparent,
    body: SingleChildScrollView(
      child: Column(
        children: [
          verticalSpace(300),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16.h),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 37.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  verticalSpace(27),
                  smsScreenText(),
                  verticalSpace(10),
                  otpField(
                    context,
                    controllers: controllers,
                    focusNodes: focusNodes,
                  ),
                  wrongActionIndicator(),
                  resendCodeTimer(),
                  verticalSpace(30),
                  confirmButton(),
                  verticalSpace(30),
                  resendCodeButton(),
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
