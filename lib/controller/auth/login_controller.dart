import 'package:ecommerce_app/core/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  late TextEditingController usernameController;
  late TextEditingController passwordController;
  final key = GlobalKey<FormState>();

  void login() {
    var state = key.currentState;
    if (state == null) return;
    if (state.validate()) {
      print('valid');
    } else {
      print('not valid');
    }
  }

  void toSignUp() {
    Get.offNamed(AppRoutes.signUpRoute);
    // Get.delete<LoginController>();
  }

  @override
  void onInit() {
    usernameController = TextEditingController();
    passwordController = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    usernameController.dispose();
    passwordController.dispose();

    super.onClose();
  }
}
