import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:promaison/features/login/ui/widgets/sms_screen_components/otp_item.dart';

Widget otpField(
  BuildContext context, {
  required List<TextEditingController> controllers,
  required List<FocusNode> focusNodes,
}) {
  return SizedBox(
    height: 53.h,
    width: double.infinity,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: List.generate(4, (index) {
        return otpItem(
          context,
          index: index,
          controllers: controllers,
          focusNodes: focusNodes,
        );
      }),
    ),
  );
}
