import 'package:get/get.dart';

import 'controller/auth/forgot-password/forgot_password_controller.dart';
import 'controller/auth/forgot-password/reset_passsword_controller.dart';
import 'controller/auth/login_controller.dart';
import 'controller/auth/sign_up_controller.dart';

class MyBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpController(), fenix: true);
    Get.lazyPut(() => LoginController(), fenix: true);
    Get.lazyPut(() => ResetPasswordController());
    Get.lazyPut(() => ForgotPasswordController(), fenix: true);
  }
}
