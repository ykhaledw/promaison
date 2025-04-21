import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:promaison/core/helpers/extensions.dart';
import 'package:promaison/core/theming/colors.dart';
import 'package:promaison/features/onboarding/widgets/onboarding_components.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../core/routing/routes.dart';
import '../../generated/l10n.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  static PageController pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    final Widget pageIndicator = SmoothPageIndicator(
      effect: ExpandingDotsEffect(
        activeDotColor: Colors.black,
        dotHeight: 7.h,
        radius: 16.r,
        dotWidth: 10.w,
        dotColor: AppColors.lightGrey,
      ),
      controller: pageController,
      count: 3,
      onDotClicked: (index) {
        pageController.animateToPage(
          index,
          duration: Durations.medium1,
          curve: Curves.linear,
        );
      },
    );
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: PageView(
            controller: pageController,
            children: [
              //First onboarding screen
              onBoardingComponents(
                imagePath: 'assets/images/onboarding_logo_1.png',
                boldText: S.of(context).chooseYourPreferedService,
                subtitle: S.of(context).chooseYourServiceSubtitle,
                buttonText: S.of(context).next,
                suffixIcon: const Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                ),
                onTap: () {
                  pageController.animateToPage(
                    1,
                    duration: Durations.medium1,
                    curve: Curves.linear,
                  );
                },
                pageIndicator: pageIndicator,
              ),
              //Second onboarding screen
              onBoardingComponents(
                imagePath: 'assets/images/onboarding_logo_2.png',
                boldText: S.of(context).buyAnyPiece,
                subtitle: S.of(context).buyAnyPieceSubtitle,
                buttonText: S.of(context).next,
                suffixIcon: const Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                ),
                onTap: () {
                  pageController.animateToPage(
                    2,
                    duration: Durations.medium1,
                    curve: Curves.linear,
                  );
                },
                pageIndicator: pageIndicator,
              ),
              //Third onboardign screen
              onBoardingComponents(
                  imagePath: 'assets/images/onboarding_logo_3.2.png',
                  boldText: S.of(context).offeringVIPService,
                  subtitle: S.of(context).offeringVIPServiceSubtitle,
                  buttonText: S.of(context).getStarted,
                  onTap: () {
                    context.pushNamed(Routes.loginScreen);
                  },
                  pageIndicator: pageIndicator,
                  secondLogoPath: 'assets/images/onboarding_logo_3.1.png'),
            ],
          ),
        ),
      ),
    );
  }
}
