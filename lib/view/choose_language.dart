import 'package:country_flags/country_flags.dart';
import 'package:ecommerce_app/core/constant/colors.dart';
import 'package:ecommerce_app/core/localization/change_local.dart';
import 'package:ecommerce_app/core/localization/translations.dart';
import 'package:ecommerce_app/core/routes/routes.dart';
import 'package:ecommerce_app/core/widget/custom_botton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChooseLanguage extends StatelessWidget {
  const ChooseLanguage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const SizedBox(height: 100),
            Text(
              Tr.chooseLanguage.tr,
              style: Theme.of(context).textTheme.displayLarge,
            ),
            const SizedBox(height: 40),
            const _Language(code: 'us', text: 'English'),
            const SizedBox(height: 40),
            const _Language(code: 'sa', text: '   العربية'),
            const SizedBox(height: 40),
            CustomButton(
              onPressed: () {
                Get.offNamed(AppRoutes.onboardingRoute);
              },
              text: Tr.continueWithDefaultLanguage.tr,
            ),
          ],
        ),
      ),
    );
  }
}

class _Language extends GetView<ChangeLocaleController> {
  final String code;
  final String text;
  const _Language({required this.code, required this.text});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        controller.changeLanguage(code);

        Get.offNamed(AppRoutes.onboardingRoute);
      },
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColors.lightGrey,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CountryFlag.fromCountryCode(
              code,
              width: 40,
              height: 40,
            ),
            const SizedBox(width: 40),
            Text(
              text,
              style: Theme.of(context).textTheme.bodyLarge,
            )
          ],
        ),
      ),
    );
  }
}
