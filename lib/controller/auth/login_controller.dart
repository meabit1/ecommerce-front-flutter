import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  late TextEditingController usernameController;
  late TextEditingController passwordController;

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
