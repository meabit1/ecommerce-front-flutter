import 'package:ecommerce_app/core/localization/translations.dart';
import 'package:ecommerce_app/core/routes/routes.dart';
import 'package:ecommerce_app/core/widget/custom_botton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/auth/sign_up_controller.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 80),
              Text(
                Tr.signUp.tr,
                style: Theme.of(context).textTheme.displayLarge,
              ),
              const SizedBox(height: 30),
              TextField(
                controller: controller.emailController,
                decoration: InputDecoration(
                  hintText: Tr.email.tr,
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: controller.userNameController,
                decoration: InputDecoration(
                  hintText: Tr.username.tr,
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: controller.passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: Tr.password.tr,
                  suffixIcon: const Icon(Icons.remove_red_eye_sharp),
                ),
              ),
              const SizedBox(height: 20),
              CustomButton(
                onPressed: () {
                  Get.toNamed(AppRoutes.signUpVerifyCode);
                },
                text: Tr.signUp.tr,
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    Tr.alreadyHaveAnAccount.tr,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  TextButton(
                    onPressed: () {
                      Get.offNamed(AppRoutes.loginRoute);
                    },
                    child: Text(Tr.signIn.tr),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
