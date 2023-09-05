import 'package:ecommerce_app/view/auth/screen/login.dart';
import 'package:ecommerce_app/view/auth/screen/sign_up.dart';
import 'package:ecommerce_app/view/onboarding/screen/onboarding.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const loginRoute = '$onboardingRoute/login';
  static const onboardingRoute = '/onboarding';
  static const signUpRoute = '$onboardingRoute/signUp';
  static Map<String, Widget Function(BuildContext context)> routes = {
    loginRoute: (context) => const Login(),
    onboardingRoute: (context) => const Onboarding(),
    signUpRoute: (context) => const SignUp()
  };
}
