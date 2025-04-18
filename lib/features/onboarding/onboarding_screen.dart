import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:promaison/core/helpers/extensions.dart';
import 'package:promaison/core/theming/colors.dart';
import 'package:promaison/features/onboarding/widgets/onboarding_components.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../core/routing/routes.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  static PageController pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Stack(
            alignment: Alignment.center,
            children: [
              PageView(
                controller: pageController,
                children: [
                  //First onboarding screen
                  onBoardingComponents(
                    imagePath: 'assets/svgs/onboarding_logo_1.svg',
                    boldText: 'أختر كل ما تحتاجه من خدماتنا',
                    subtitle:
                        'متخصصة في مجال الكهرباء، تكييف، مصاعد، السباكة،وخدمات أخرى وتمتلك الشركة خبرات وكوادر ذات كفاءة عالية',
                    buttonText: 'التالي',
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
                  ),
                  //Second onboarding screen
                  onBoardingComponents(
                    imagePath: 'assets/svgs/onboarding_logo_2.svg',
                    boldText: 'اشتري كل القطع لمنزلك بسهولة ',
                    subtitle:
                        'نتطلع لتقديم خدمة متكاملة لأعمال صيانة المنازل التي يحتاج إليها ٍ عملائنا بشكل احترافي لنكون الخيار الأول لهم',
                    buttonText: 'التالي',
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
                  ),
                  //Third onboardign screen
                  onBoardingComponents(
                      imagePath: 'assets/svgs/onboarding_logo_3.2.svg',
                      boldText: 'توفير  خدمة (VIP)',
                      subtitle:
                          ' vip هي خدمة يمكنك الاشتراك بها باشتراك سنوي  مع إمكانية الدفع بشكل شهري واضمن صيانة منزلك او منشأتك',
                      buttonText: 'هيا بنا نبدء',
                      onTap: () {
                        context.pushNamed(Routes.loginScreen);
                      },
                      secondLogoPath: 'assets/svgs/onboarding_logo_3.1.svg'),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 80.h),
                child: SmoothPageIndicator(
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
