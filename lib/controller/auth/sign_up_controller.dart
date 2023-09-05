import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  late TextEditingController emailController;
  late TextEditingController userNameController;
  late TextEditingController passwordController;

  @override
  void onInit() {
    emailController = TextEditingController();
    userNameController = TextEditingController();
    passwordController = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    emailController.dispose();
    userNameController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}
