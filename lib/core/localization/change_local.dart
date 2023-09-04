import 'package:ecommerce_app/core/service/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangeLocaleController extends GetxController {
  Locale? language;
  final services = Get.find<MyServices>();
  void changeLanguage(String languageCode) {
    final locale = Locale(languageCode);
    services.sharedPreferences.setString('languageCode', languageCode);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    initLanguage();
    super.onInit();
  }

  void initLanguage() {
    String? languageCode = services.sharedPreferences.getString('languageCode');
    if (languageCode == 'ar') {
      language = Locale(languageCode!);
    } else if (languageCode == 'en') {
      language = Locale(languageCode!);
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
    }
  }
}
