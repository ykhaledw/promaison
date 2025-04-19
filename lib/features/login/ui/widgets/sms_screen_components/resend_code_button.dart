import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/styles.dart';

Widget resendCodeButton() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        'إعادة إرسال',
        style: TextStyles.font18WhiteExtraBold.copyWith(color: Colors.black),
      ),
      horizontalSpace(6),
      SizedBox(
        height: 24.h,
        width: 24.h,
        child: SvgPicture.asset('assets/svgs/refresh-circle.svg'),
      ),
    ],
  );
}
