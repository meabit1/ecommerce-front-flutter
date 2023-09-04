import 'package:ecommerce_app/core/routes/routes.dart';
import 'package:ecommerce_app/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class OnboardingController extends GetxController {
  void next();
  void pageChanged(int index);
}

class OnBoardingControllerImpl extends OnboardingController {
  late PageController pageController;
  int currentIndex = 0;
  @override
  void next() {
    if (currentIndex == onboardingList.length - 1) {
      Get.offNamed(AppRoutes.loginRoute);
    } else {
      currentIndex++;
      pageController.animateToPage(
        currentIndex,
        duration: const Duration(milliseconds: 600),
        curve: Curves.linear,
      );
      update();
    }
  }

  @override
  void pageChanged(int index) {
    currentIndex = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }
}
