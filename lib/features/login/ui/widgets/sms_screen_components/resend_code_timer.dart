import 'package:flutter/material.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/styles.dart';
import '../../../../../generated/l10n.dart';

Widget resendCodeTimer(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        S.of(context).youCanResendCode,
        style: TextStyles.font16darkGreySemiBold,
      ),
      horizontalSpace(12),
      //Here will be the timer
      Text(
        '01:59',
        style:
            TextStyles.font16darkGreySemiBold.copyWith(color: AppColors.green),
      ),
    ],
  );
}
