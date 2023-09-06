import 'package:ecommerce_app/core/function/valid_input.dart';
import 'package:ecommerce_app/core/localization/translations.dart';
import 'package:ecommerce_app/core/routes/routes.dart';
import 'package:ecommerce_app/core/widget/custom_botton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controller/auth/forgot-password/reset_passsword_controller.dart';
import '../../widget/success_dialogue.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Tr.newPassword.tr),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
            child: GetBuilder<ResetPasswordController>(
          builder: (controller) => Form(
            key: controller.key,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 80),
                TextFormField(
                  validator: (value) => validInput(value, InputType.password),
                  controller: controller.passwordController,
                  decoration: InputDecoration(
                    hintText: Tr.password.tr,
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.remove_red_eye_sharp),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: controller.confirmPasswordController,
                  validator: (value) => validInput(value, InputType.password),
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: Tr.confirmPassword.tr,
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.remove_red_eye_sharp),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                CustomButton(
                  onPressed: () {
                    Get.dialog(
                      barrierDismissible: false,
                      const SuccessDialog(),
                    );
                  },
                  text: Tr.submit.tr,
                ),
              ],
            ),
          ),
        )),
      ),
    );
  }
}
