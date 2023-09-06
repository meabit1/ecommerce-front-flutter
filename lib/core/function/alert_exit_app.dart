import 'dart:io';

import 'package:ecommerce_app/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../localization/translations.dart';

Future<bool> alertExitApp() {
  Get.defaultDialog(
      title: Tr.warning.tr,
      content: Text(Tr.yourAbout.tr),
      actions: [
        TextButton(
          onPressed: () {
            Get.back();
          },
          child: Text(
            Tr.cancel.tr,
            style: const TextStyle(
              color: AppColors.darkGrey,
            ),
          ),
        ),
        TextButton(
          onPressed: () {
            exit(0);
          },
          child: Text(
            Tr.stay.tr,
          ),
        ),
      ]);
  return Future.value(true);
}
