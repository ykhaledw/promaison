import 'package:flutter/material.dart';

import 'widgets/login_background.dart';
import 'widgets/login_components.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          loginBackground(),
          loginComponents(context),
        ],
      ),
    );
  }
}
