import 'package:flutter/material.dart';

import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/styles.dart';
import '../../../../../generated/l10n.dart';

Widget conditionsText(BuildContext context) {
  return RichText(
    textAlign: TextAlign.start,
    text: TextSpan(
      children: [
        TextSpan(
          text: S.of(context).conditionsText,
          style: TextStyles.font15GreyRegular,
        ),
        TextSpan(
          text: '  (${S.of(context).readConditions})',
          style:
              TextStyles.font15GreyRegular.copyWith(color: AppColors.mainColor),
        ),
      ],
    ),
  );
  // return Column(
  //   crossAxisAlignment: CrossAxisAlignment.start,
  //   children: [
  //     Text(
  //       S.of(context).conditionsText,
  //       style: TextStyles.font15GreyRegular,
  //       textAlign: TextAlign.start,
  //     ),
  //     Row(
  //       mainAxisAlignment: MainAxisAlignment.end,
  //       children: [
  //         Text(
  //           '(${S.of(context).readConditions})',
  //           style: TextStyles.font15GreyRegular
  //               .copyWith(color: AppColors.mainColor),
  //           textAlign: TextAlign.end,
  //         ),
  //       ],
  //     ),
  //   ],
  // );
}
