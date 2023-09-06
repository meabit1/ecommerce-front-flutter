import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPasswordController extends GetxController {
  late TextEditingController passwordController;
  late TextEditingController confirmPasswordController;
  final key = GlobalKey<FormState>();

  @override
  void onInit() {
    confirmPasswordController = TextEditingController();
    passwordController = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    confirmPasswordController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}
