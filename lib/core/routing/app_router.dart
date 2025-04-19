import 'package:flutter/material.dart';
import 'package:promaison/core/routing/routes.dart';
import 'package:promaison/features/home/ui/home_screen.dart';
import 'package:promaison/features/login/ui/login_screen.dart';
import 'package:promaison/features/login/ui/sms_code_screen.dart';
import 'package:promaison/features/onboarding/onboarding_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings setting) {
    switch (setting.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnboardingScreen(),
        );

      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );

      case Routes.smsCodeScreen:
        return MaterialPageRoute(
          builder: (_) => const SmsCodeScreen(),
        );

      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(
              child: Text('No route found'),
            ),
          ),
        );
    }
  }
}
