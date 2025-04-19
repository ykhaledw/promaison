import 'package:flutter/material.dart';
import 'package:promaison/features/login/ui/widgets/sms_code_screen_widgets.dart';

import 'widgets/login_background.dart';

class SmsCodeScreen extends StatelessWidget {
  const SmsCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          loginBackground(),
          smsCodeWidgets(),
        ],
      ),
    );
  }
}
