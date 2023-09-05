import 'package:ecommerce_app/core/constant/strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/sign_up_verify_code_controller.dart';
import '../../../core/localization/translations.dart';
import '../../../core/widget/custom_botton.dart';
import '../widget/my_pinput.dart';

class SignUpVerifyCode extends StatelessWidget {
  const SignUpVerifyCode({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SignUpVerifyCodeController());
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 60),
              Image.asset(
                AppImageAssets.letter,
              ),
              const SizedBox(height: 60),
              Text(
                Tr.emailSent.tr,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(height: 20),
              //  verification code widget
              const MyPinput(),
              const SizedBox(height: 30),
              CustomButton(
                onPressed: () {
                  // Get.offAllNamed(AppRoutes.resetPassword);
                },
                text: Tr.verify.tr,
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    Tr.ifYou.tr,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  TextButton(
                    onPressed: () {
                      Get.back();
                    },
                    child: Text(Tr.resend.tr),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
