import 'package:ecommerce_app/view/auth/screen/login.dart';
import 'package:ecommerce_app/view/onboarding/screen/onboarding.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const loginRoute = '/onboarding/login';
  static const onboardingRoute = '/onboarding';
  static Map<String, Widget Function(BuildContext context)> routes = {
    loginRoute: (context) => const Login(),
    onboardingRoute: (context) => const Onboarding(),
  };
}
