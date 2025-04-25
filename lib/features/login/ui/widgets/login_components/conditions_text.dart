import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:promaison/core/shared_widgets/terms_and_conditions_screen.dart';

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
          recognizer: TapGestureRecognizer()
            ..onTap = () {
              showTermsAndConditionsDialog(context);
            },
        ),
      ],
    ),
  );
}
