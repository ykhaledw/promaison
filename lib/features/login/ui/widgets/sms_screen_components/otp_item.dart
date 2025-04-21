import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/shared_widgets/app_text_form_field.dart';
import '../../../../../core/theming/colors.dart';

Widget otpItem(BuildContext context,
    {required int index,
    required List<TextEditingController> controllers,
    required List<FocusNode> focusNodes}) {
  return SizedBox(
    width: 53.w,
    height: 53.h,
    child: appTextFormField(
      controller: controllers[index],
      focusNode: focusNodes[index],
      keyboardType: TextInputType.number,
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.black.withValues(alpha: 0.11),
          width: 1.3,
        ),
        borderRadius: BorderRadius.circular(5.r),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.black.withValues(alpha: 0.11),
          width: 1.3,
        ),
        borderRadius: BorderRadius.circular(5.r),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: AppColors.mainColor,
          width: 1.3,
        ),
        borderRadius: BorderRadius.circular(5.r),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: AppColors.mainColor,
          width: 1.3,
        ),
        borderRadius: BorderRadius.circular(5.r),
      ),
      onChanged: (value) {
//This condition ensures that the current TextField is not the last one in the sequence.
//The check index < 5 prevents trying to move focus to a non-existent next field.
        if (value.isNotEmpty && index < 3) {
          FocusScope.of(context).requestFocus(focusNodes[index + 1]);
        }
//managing focus in an OTP input field where the user may need to move backward when correcting an entry
        else if (value.isEmpty && index > 0) {
          FocusScope.of(context).requestFocus(focusNodes[index - 1]);
        }
      },
      hintText: '',
      validator: (value) {},
    ),
  );
}
