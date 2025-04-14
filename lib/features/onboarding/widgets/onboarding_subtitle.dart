import 'package:flutter/material.dart';
import 'package:promaison/core/theming/styles.dart';

Widget onboardingSubtitle(String subtitle) {
  return Text(
    subtitle,
    style: TextStyles.font15Black50SemiBold,
    textAlign: TextAlign.center,
  );
}
