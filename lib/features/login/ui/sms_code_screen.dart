import 'package:flutter/material.dart';
import 'package:promaison/features/login/ui/widgets/sms_code_screen_widgets.dart';

import 'widgets/login_background.dart';

class SmsCodeScreen extends StatefulWidget {
  const SmsCodeScreen({super.key});

  @override
  State<SmsCodeScreen> createState() => _SmsCodeScreenState();
}

class _SmsCodeScreenState extends State<SmsCodeScreen> {
  int? index;
  final List<TextEditingController> _controllers =
      List.generate(4, (_) => TextEditingController());
  final List<FocusNode> _focusNodes = List.generate(4, (_) => FocusNode());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          loginBackground(),
          smsCodeWidgets(
            context,
            controllers: _controllers,
            focusNodes: _focusNodes,
          ),
        ],
      ),
    );
  }
}
