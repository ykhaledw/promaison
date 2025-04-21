import 'package:flutter/material.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/styles.dart';
import '../../../../../generated/l10n.dart';

Widget loginText(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        S.of(context).login,
        style: TextStyles.font24BlackExtraBold,
      ),
      verticalSpace(6),
      Text(
        S.of(context).loginUsingPhone,
        style: TextStyles.font16BrownRegular.copyWith(
          color: Colors.grey.withValues(alpha: 0.7),
        ),
      ),
    ],
  );
}
