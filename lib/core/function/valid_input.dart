import 'package:get/get.dart';

import '../localization/translations.dart';

enum InputType { username, password, email }

String? validInput(String? value, InputType type) {
  if (value == null) {
    return null;
  }
  if (type == InputType.email) {
    if (!GetUtils.isEmail(value)) {
      return Tr.invalidEmail.tr;
    }
  }
  if (type == InputType.username) {
    if (!GetUtils.isUsername(value)) {
      return Tr.invalidUsername.tr;
    }
  }
  if (type == InputType.password) {
    final weekPasswordPattern = RegExp(r"^(?=.*[A-Za-z])(?=.*\d).{6,}$");
    if (!weekPasswordPattern.hasMatch(value)) {
      return Tr.weekPassword.tr;
    }
  }
  return null;
}
