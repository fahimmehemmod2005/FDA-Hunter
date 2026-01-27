import 'package:flutter/cupertino.dart';

class OtpViewModel extends ChangeNotifier{

  String? otpValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'OTP is required';
    } else if (value.length != 6) {
      return 'Enter 6 digit code';
    }
    return null;
  }
}