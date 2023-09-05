import 'package:ecommerce_app/core/localization/translations.dart';
import 'package:ecommerce_app/core/widget/custom_botton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controller/auth/forgot-password/verify_code_controller.dart';
import '../../../../core/routes/routes.dart';
import '../../widget/my_pinput.dart';

class VerifyCode extends StatelessWidget {
  const VerifyCode({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(VerifyCodeController());
    return Scaffold(
      appBar: AppBar(
        title: Text(Tr.verification.tr),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 60),
              Text(
                Tr.enterVerif.tr,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(height: 20),
              //  verification code widget
              const MyPinput(),
              const SizedBox(height: 30),
              CustomButton(
                onPressed: () {
                  Get.offAllNamed(AppRoutes.resetPassword);
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
