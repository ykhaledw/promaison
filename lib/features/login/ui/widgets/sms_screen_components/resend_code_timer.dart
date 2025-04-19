import 'package:flutter/material.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/styles.dart';

Widget resendCodeTimer() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      //Here will be the timer
      Text(
        '01:59',
        style:
            TextStyles.font16darkGreySemiBold.copyWith(color: AppColors.green),
      ),
      horizontalSpace(12),
      Text(
        ' يمكنك اعادة ارسال الكود خلال',
        style: TextStyles.font16darkGreySemiBold,
      ),
    ],
  );
}
