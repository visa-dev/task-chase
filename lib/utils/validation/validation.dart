import 'package:get_storage/get_storage.dart';

class KValidators {
  static validateEmptyText({String? fieldName="", String? value=""}) {
    if (value == null || value.isEmpty) {
      return '$fieldName is required';
    }

    return null;
  }

  static String? validateEmail({String? value=""}) {
    if (value == null || value.isEmpty) {
      return "Email is required";
    }

    final emailRegExp =
        RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');

    if (!emailRegExp.hasMatch(value)) {
      return "Invalid email address";
    }

    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return "Password is required";
    }

    if (value.length < 6) {
      return "Password must be at least 6 characters long";
    }

    if (value.contains(RegExp(r'[A-Z]'))) {
      return "Password must contain at least one uppercase letter";
    }

    if (value.contains(RegExp(r'[0-9]'))) {
      return "Password must contain at least one number";
    }

    if (value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      return "Password must contain at least one special characters ";
    }

    return null;
  }

  static String? validateMobileNumber(String? value) {
    if (value == null || value.isEmpty) {
      return "Phone number is required";
    }

    final mobileRegExp = RegExp(r'^[0-9]{10}$');

    if (!mobileRegExp.hasMatch(value)) {
      return "Invalid phone number";
    }

    return null;
  }
}
