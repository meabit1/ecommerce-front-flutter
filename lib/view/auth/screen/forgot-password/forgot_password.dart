import 'package:ecommerce_app/core/localization/translations.dart';
import 'package:ecommerce_app/core/widget/custom_botton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controller/auth/forgot-password/forgot_password_controller.dart';
import '../../../../core/routes/routes.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ForgotPasswordController());
    return Scaffold(
      appBar: AppBar(
        title: Text(Tr.forgotPassword.tr),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 60),
              Text(
                Tr.enterEmail.tr,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(height: 20),
              TextField(
                controller: controller.emailController,
                decoration: InputDecoration(hintText: Tr.email.tr),
              ),
              const SizedBox(height: 30),
              CustomButton(
                onPressed: () {
                  Get.toNamed(AppRoutes.verifyCode);
                },
                text: Tr.send.tr,
              ),
              const SizedBox(height: 30),
              TextButton(
                onPressed: () {
                  Get.back();
                },
                child: Text(Tr.signIn.tr),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
