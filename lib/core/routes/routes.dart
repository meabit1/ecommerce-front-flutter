import 'package:ecommerce_app/view/auth/screen/forgot-password/forgot_password.dart';
import 'package:ecommerce_app/view/auth/screen/login.dart';
import 'package:ecommerce_app/view/auth/screen/forgot-password/reset_password.dart';
import 'package:ecommerce_app/view/auth/screen/sign_up.dart';
import 'package:ecommerce_app/view/auth/screen/forgot-password/veriify_code.dart';
import 'package:ecommerce_app/view/auth/screen/sign_up_verifi_code.dart';
import 'package:ecommerce_app/view/onboarding/screen/onboarding.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const resetPassword = '/resetPassword';
  static const verifyCode = '/verifyCode';
  static const loginRoute = '/login';
  static const onboardingRoute = '/onboarding';
  static const signUpRoute = '/signUp';
  static const forgotPassword = '/forgotPassword';
  static const signUpVerifyCode = '/signupVerifyCode';
  static Map<String, Widget Function(BuildContext context)> routes = {
    loginRoute: (context) => const Login(),
    onboardingRoute: (context) => const Onboarding(),
    signUpRoute: (context) => const SignUp(),
    forgotPassword: (context) => const ForgotPassword(),
    verifyCode: (context) => const VerifyCode(),
    resetPassword: (context) => const ResetPassword(),
    signUpVerifyCode: (context) => const SignUpVerifyCode(),
  };
}
