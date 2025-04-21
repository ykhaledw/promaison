import 'package:flutter/material.dart';
import 'package:promaison/core/helpers/extensions.dart';

import '../../../../../core/routing/routes.dart';
import '../../../../../core/shared_widgets/app_text_button.dart';
import '../../../../../core/theming/styles.dart';
import '../../../../../generated/l10n.dart';

Widget loginButton(BuildContext context) {
  return appTextButton(
    onPressed: () {
      // context.pushNamedAndRemoveUntil(Routes.homeScreen,
      //     predicate: (Route<dynamic> route) => false);
      context.pushNamed(Routes.smsCodeScreen);
    },
    buttonText: S.of(context).login,
    textStyle: TextStyles.font18WhiteExtraBold,
  );
}
