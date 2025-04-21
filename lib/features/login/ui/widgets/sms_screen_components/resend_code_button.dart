import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/styles.dart';
import '../../../../../generated/l10n.dart';

Widget resendCodeButton(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      SizedBox(
        height: 24.h,
        width: 24.h,
        child: SvgPicture.asset('assets/svgs/refresh-circle.svg'),
      ),
      horizontalSpace(6),
      Text(
        S.of(context).resend,
        style: TextStyles.font18WhiteExtraBold.copyWith(color: Colors.black),
      ),
    ],
  );
}
