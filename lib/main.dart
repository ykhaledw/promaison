import 'package:flutter/material.dart';
import 'package:promaison/core/routing/app_router.dart';
import 'package:promaison/promaison_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    PromaisonApp(
      appRouter: AppRouter(),
    ),
  );
}
