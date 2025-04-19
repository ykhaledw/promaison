import 'package:flutter/material.dart';

import '../../../../../core/shared_widgets/app_text_button.dart';
import '../../../../../core/theming/styles.dart';

Widget confirmButton() {
  return appTextButton(
    onPressed: () {},
    buttonText: 'تأكيد',
    textStyle: TextStyles.font18WhiteExtraBold,
  );
}
