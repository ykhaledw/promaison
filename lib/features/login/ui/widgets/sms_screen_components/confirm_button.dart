import 'package:flutter/material.dart';

import '../../../../../core/shared_widgets/app_text_button.dart';
import '../../../../../core/theming/styles.dart';
import '../../../../../generated/l10n.dart';

Widget confirmButton(BuildContext context) {
  return appTextButton(
    onPressed: () {},
    buttonText: S.of(context).confirm,
    textStyle: TextStyles.font18WhiteExtraBold,
  );
}
