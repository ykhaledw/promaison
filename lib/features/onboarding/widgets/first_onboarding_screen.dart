import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:promaison/features/onboarding/widgets/onboarding_logos.dart';
import 'package:promaison/features/onboarding/widgets/promaison_logo.dart';

import 'onboarding_bold_text.dart';
import 'onboarding_button.dart';
import 'onboarding_main_text.dart';
import 'onboarding_subtitle.dart';

Widget firstOnboardingScreen() {
  return Padding(
    padding: EdgeInsets.only(top: 13.h),
    child: Column(
      children: [
        promaisonLogo(),
        SizedBox(
          height: 12.h,
        ),
        onboardingLogo('assets/svgs/onboarding_logo_1.svg'),
        SizedBox(
          height: 26.h,
        ),
        onboardingMainText(),
        SizedBox(
          height: 15.h,
        ),
        onBoardingBoldText('أختر كل ما تحتاجه من خدماتنا'),
        SizedBox(
          height: 16.h,
        ),
        onboardingSubtitle(
            'متخصصة في مجال الكهرباء، تكييف، مصاعد، السباكة،وخدمات أخرى وتمتلك الشركة خبرات وكوادر ذات كفاءة عالية'),
        SizedBox(
          height: 67.h,
        ),
        onBoardingButton(
          'التالي',
          () {},
          suffixIcon: const Icon(
            Icons.arrow_forward,
            color: Colors.white,
          ),
        ),
      ],
    ),
  );
}
