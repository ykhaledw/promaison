import 'package:flutter/material.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/styles.dart';
import '../../../../../generated/l10n.dart';

Widget smsScreenText(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        S.of(context).otp,
        style: TextStyles.font24BlackExtraBold,
      ),
      verticalSpace(6),
      Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            S.of(context).enterReceivedOTP,
            style: TextStyles.font16BrownRegular.copyWith(
              color: Colors.grey.withValues(alpha: 0.7),
            ),
          ),
        ],
      ),
    ],
  );
}
