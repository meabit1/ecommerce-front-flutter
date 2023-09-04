import 'package:ecommerce_app/controller/onboarding_controller.dart';
import 'package:ecommerce_app/view/onboarding/widget/onboarding_buttons.dart';
import 'package:ecommerce_app/view/onboarding/widget/onboarding_dots.dart';
import 'package:ecommerce_app/view/onboarding/widget/onboarding_page_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImpl());
    return const Scaffold(
      body: Column(
        children: [
          OnboardingPageView(),
          OnboardingDots(),
          OnboardingButtons(),
        ],
      ),
    );
  }
}
