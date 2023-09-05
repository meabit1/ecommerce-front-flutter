import 'package:ecommerce_app/controller/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/datasource/static/static.dart';

class OnboardingPageView extends GetView<OnBoardingControllerImpl> {
  const OnboardingPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        controller: controller.pageController,
        onPageChanged: (value) => controller.pageChanged(value),
        itemCount: onboardingList.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              Text(
                onboardingList[index].title.tr,
                style: Theme.of(context).textTheme.displayLarge,
              ),
              const SizedBox(height: 20),
              Image.asset(
                onboardingList[index].imageAsset,
                scale: 0.6,
              ),
              const SizedBox(height: 20),
              Container(
                width: double.infinity,
                height: 80,
                alignment: Alignment.center,
                child: Text(
                  onboardingList[index].body.tr,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
