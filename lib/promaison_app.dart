import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:promaison/core/routing/app_router.dart';
import 'package:promaison/core/theming/colors.dart';

import 'core/routing/routes.dart';

class PromaisonApp extends StatelessWidget {
  final AppRouter appRouter;
  const PromaisonApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      minTextAdapt: true,
      child: MaterialApp(
        title: 'Promaison',
        onGenerateRoute: appRouter.generateRoute,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: AppColors.mainColor,
          scaffoldBackgroundColor: Colors.white,
        ),
        initialRoute: Routes.onBoardingScreen,
      ),
    );
  }
}
