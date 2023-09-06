import 'package:ecommerce_app/core/function/alert_exit_app.dart';
import 'package:ecommerce_app/core/function/valid_input.dart';
import 'package:ecommerce_app/core/localization/translations.dart';
import 'package:ecommerce_app/core/routes/routes.dart';
import 'package:ecommerce_app/core/widget/custom_botton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/auth/login_controller.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WillPopScope(
        onWillPop: alertExitApp,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: GetBuilder<LoginController>(
              builder: (controller) => Form(
                key: controller.key,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 80),
                    Text(
                      Tr.signIn.tr,
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                    const SizedBox(height: 80),
                    TextFormField(
                      validator: (value) =>
                          validInput(value, InputType.username),
                      controller: controller.usernameController,
                      decoration: InputDecoration(
                        hintText: Tr.username.tr,
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      validator: (value) =>
                          validInput(value, InputType.password),
                      controller: controller.passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: Tr.password.tr,
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.remove_red_eye_sharp),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(value: false, onChanged: (value) {}),
                            Text(
                              Tr.rememberMe.tr,
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ],
                        ),
                        TextButton(
                          onPressed: () {
                            Get.toNamed(AppRoutes.forgotPassword);
                          },
                          child: Text(
                            Tr.forgotPassword.tr,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    CustomButton(
                      onPressed: () {
                        controller.login();
                      },
                      text: Tr.signIn.tr,
                    ),
                    const SizedBox(height: 50),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          Tr.dontHaveAnAccount.tr,
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        TextButton(
                          onPressed: () {
                            controller.toSignUp();
                          },
                          child: Text(Tr.signUp.tr),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
