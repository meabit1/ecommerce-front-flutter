import 'package:ecommerce_app/controller/onboarding_controller.dart';
import 'package:ecommerce_app/core/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingButtons extends StatelessWidget {
  const OnboardingButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<OnBoardingControllerImpl>();
    return Column(children: [
      const SizedBox(height: 50),
      Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 60),
        child: ElevatedButton(
          onPressed: () {
            controller.next();
          },
          child: Text('Continue'.tr),
        ),
      ),
      const SizedBox(height: 10),
      TextButton(
          onPressed: () {
            Get.offNamed(AppRoutes.loginRoute);
          },
          child: Text('Skip'.tr)),
      const SizedBox(height: 30),
    ]);
  }
}
