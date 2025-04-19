import 'package:flutter/material.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/styles.dart';

Widget loginText() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
      Text(
        'تسجيل الدخول ',
        style: TextStyles.font24BlackExtraBold,
      ),
      verticalSpace(6),
      Text(
        'سجل الدخول باستخدام رقم الجوال',
        style: TextStyles.font16BrownRegular.copyWith(
          color: Colors.grey.withValues(alpha: 0.7),
        ),
      ),
    ],
  );
}
