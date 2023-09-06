import 'package:ecommerce_app/bindings.dart';
import 'package:ecommerce_app/core/localization/change_local.dart';
import 'package:ecommerce_app/core/localization/translations.dart';
import 'package:ecommerce_app/core/routes/routes.dart';
import 'package:ecommerce_app/core/service/services.dart';
import 'package:ecommerce_app/core/themes/theme.dart';
import 'package:ecommerce_app/view/auth/screen/login.dart';
import 'package:ecommerce_app/view/choose_language.dart';
import 'package:ecommerce_app/view/onboarding/screen/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final localeController = Get.put(ChangeLocaleController());
    return GetMaterialApp(
      initialBinding: MyBindings(),
      locale: localeController.language,
      translations: Tr(),
      routes: AppRoutes.routes,
      theme: MyTheme.mainTheme,
      debugShowCheckedModeBanner: false,
      home: const SafeArea(
        child: Login(),
      ),
    );
  }
}
