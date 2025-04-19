import 'package:flutter/material.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/styles.dart';

Widget smsScreenText() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
      Text(
        'رمز تأكيد',
        style: TextStyles.font24BlackExtraBold,
      ),
      verticalSpace(6),
      Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            'المكون من 6 أرفام OTP أدخل رمز التأكيد',
            style: TextStyles.font16BrownRegular.copyWith(
              color: Colors.grey.withValues(alpha: 0.7),
            ),
          ),
          Text(
            ' الذي تم إرساله إلى رقم الهاتف 8116 777 56 213',
            style: TextStyles.font16BrownRegular.copyWith(
              color: Colors.grey.withValues(alpha: 0.7),
            ),
          ),
        ],
      ),
    ],
  );
}
