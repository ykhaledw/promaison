import 'package:flutter/material.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/styles.dart';

Widget conditionsText() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
      Text(
        'باكمالك التسجيل فا أنت موافق علي الشروط ',
        style: TextStyles.font15GreyRegular,
        textAlign: TextAlign.end,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            '(قراءةالشروط)',
            style: TextStyles.font15GreyRegular
                .copyWith(color: AppColors.mainColor),
            textAlign: TextAlign.end,
          ),
          horizontalSpace(8),
          Text(
            'PROMAISON و الأحكام فى',
            style: TextStyles.font15GreyRegular,
            textAlign: TextAlign.end,
          ),
        ],
      ),
    ],
  );
}
