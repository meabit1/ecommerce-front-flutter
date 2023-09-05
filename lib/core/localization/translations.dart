import 'package:get/get.dart';

class Tr extends Translations {
  static const String signIn = 'Sign in';
  static const String signUp = 'Sign up';
  static const String username = 'Username';
  static const String password = 'Password';
  static const String forgotPassword = 'Forgot Password?';
  static const String rememberMe = 'Remember me';
  static const String dontHaveAnAccount = 'Don\'t have an acount?';
  static const String email = 'Email';
  static const String alreadyHaveAnAccount = 'Already have an acount?';
  static const String chooseLanguage = 'Choose Language';
  static const String continueWithDefaultLanguage =
      'Continue With Default Language';
  static const String continueText = 'Continue';
  static const String skip = 'Skip';
  static const String chooseProduct = 'Choose Product';
  static const String weHave100kProducts =
      'We Have a 100k+ Products.Choose\n Your product from our\nE-commerce shop. ';
  static const String easyAndSafePayment = 'Easy & Safe Payment';
  static const String easyCheckoutAndSafePayment =
      'Easy Chekout & Safe Payment \n method. Trusted by our Customers \n from all over the world.';
  static const String trackYourOrder = 'Track Your Order';
  static const String bestTrackerUsedForTracking =
      'Best Tracker has been Used For\nTracking your order. You\'ll know where\nyour product is at the moment.';
  static const String fastDelivery = 'Fast Delivery';
  static const String reliableAndFastDelivery =
      'Reliable And Fast Delivary. We\nDeliver your product the fastest way possible.';

  @override
  Map<String, Map<String, String>> get keys => {
        'ar': {
          signIn: 'تسجيل الدخول',
          signUp: 'انشاء حساب',
          username: 'اسم المستخدم',
          password: 'كلمة السر',
          forgotPassword: 'هل نسيت كلمة السر؟',
          rememberMe: 'تذكرني',
          dontHaveAnAccount: 'لا تملك حساب؟',
          email: 'Email',
          alreadyHaveAnAccount: 'Already have an acount?',
          chooseLanguage: 'اختر اللغة',
          continueWithDefaultLanguage: 'استمر بلغة الجهاز',
          continueText: 'استمر',
          skip: 'تخطي',
          chooseProduct: 'اختر المنتج',
          weHave100kProducts:
              'لدينا أكثر من 100 ألف منتج.اختر منتجك من متجر \n التجارة الإلكترونية لدينا.',
          easyAndSafePayment: 'الدفع السهل والآمن',
          easyCheckoutAndSafePayment:
              'طريقة دفع سهلة وآمنة. تم التوثيق بها من قبل عملائنا\n من جميع أنحاء العالم.',
          trackYourOrder: 'تتبع طلبك',
          bestTrackerUsedForTracking:
              'تم استخدام أفضل متتبع لتتبع طلبك. ستعرف أين يوجد \nمنتجك في الوقت الحالي.',
          fastDelivery: 'توصيل سريع',
          reliableAndFastDelivery:
              'توصيل موثوق وسريع. نقوم بتسليم\n منتجك بأسرع طريقة ممكنة.',
        }
      };
}
