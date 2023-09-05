import 'package:get/get.dart';

class Tr extends Translations {
  static const emailSent = 'Code has been sent to your email';
  static const newPassword = 'New Password';
  static const confirmPassword = 'Confirm Password';
  static const submit = 'Submit';
  static const resend = 'Resend';
  static const verification = 'Verification';
  static const enterVerif = 'Enter Verification Code';
  static const verify = 'Verify';
  static const ifYou = 'If you didn\'t receive code!';
  static const enterEmail = 'Enter Email Adress';
  static const send = 'send';
  static const signIn = 'Sign in';
  static const signUp = 'Sign up';
  static const username = 'Username';
  static const password = 'Password';
  static const forgotPassword = 'Forgot Password';
  static const rememberMe = 'Remember me';
  static const dontHaveAnAccount = 'Don\'t have an acount?';
  static const email = 'Email';
  static const alreadyHaveAnAccount = 'Already have an acount?';
  static const chooseLanguage = 'Choose Language';
  static const continueWithDefaultLanguage = 'Continue With Default Language';
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
          emailSent: 'تم ارسال الرمز الى البريد الاكتروني الخاص بك',
          newPassword: 'كلمة سر جديدة',
          submit: 'تم',
          confirmPassword: 'تأكيد كلمة السر',
          resend: 'ارسل مرة اخرى',
          verification: 'التأكيد',
          enterVerif: 'أدخل رمز التأكيد',
          verify: 'تأكيد',
          ifYou: 'في حالة عدم استلام الرمز',
          enterEmail: 'ادخل البريد الالكتروني',
          send: 'ارسل',
          signIn: 'تسجيل الدخول',
          signUp: 'انشاء حساب',
          username: 'اسم المستخدم',
          password: 'كلمة السر',
          forgotPassword: 'نسيت كلمة السر',
          rememberMe: 'تذكرني',
          dontHaveAnAccount: 'لا تملك حساب؟',
          email: 'البريد الالكتروني',
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
