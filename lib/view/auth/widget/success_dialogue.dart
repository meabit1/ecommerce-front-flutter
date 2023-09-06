import 'package:ecommerce_app/core/constant/colors.dart';
import 'package:ecommerce_app/core/localization/translations.dart';
import 'package:ecommerce_app/core/widget/custom_botton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessDialog extends StatelessWidget {
  // final String body;
  const SuccessDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        width: 300,
        height: 350,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: AppColors.grey,
              blurRadius: 10,
              spreadRadius: 1,
              offset: Offset(4, 4),
            )
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                size: 70,
                Icons.check_circle_outline_rounded,
                color: AppColors.primaryColor,
              ),
              const SizedBox(height: 10),
              Text(
                Tr.success.tr,
                style: Theme.of(context).textTheme.displayMedium,
              ),
              const SizedBox(height: 10),
              Container(
                width: double.infinity,
                alignment: Alignment.center,
                child: Text(
                  Tr.succesOperation.tr,
                  style: Theme.of(context).textTheme.bodySmall,
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 10),
              CustomButton(onPressed: () {}, text: Tr.continueText.tr),
            ],
          ),
        ),
      ),
    );
  }
}
