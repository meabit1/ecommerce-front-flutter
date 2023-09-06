import 'package:ecommerce_app/core/service/services.dart';
import 'package:ecommerce_app/core/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangeLocaleController extends GetxController {
  Locale? language;
  ThemeData appTheme = MyTheme.mainTheme;

  // injected services
  final services = Get.find<MyServices>();

  // handlers
  void changeLanguage(String languageCode) {
    if (languageCode == 'sa') languageCode = 'ar';
    final locale = Locale(languageCode);
    services.sharedPreferences.setString('languageCode', languageCode);
    appTheme = languageCode == 'ar' ? MyTheme.arabicTheme : MyTheme.mainTheme;

    // updating the ui
    Get.changeTheme(appTheme);
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
      appTheme = MyTheme.arabicTheme;
    } else if (languageCode == 'en') {
      language = Locale(languageCode!);
      appTheme = MyTheme.mainTheme;
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
    }
  }
}
