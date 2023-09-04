import 'package:get/get.dart';

class MyTranlations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'ar': {'1': 'اختر اللغة', '2': 'الاستمرار بلغة الجهاز'},
        'en': {'1': 'Choose Language', '2': 'Continue with default language'}
      };
}
