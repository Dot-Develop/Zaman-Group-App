import 'package:flutter/material.dart';

class AuthenticationProvider extends ChangeNotifier {
  bool isLoggedIn = false;

  void setLoginTrue() {
    isLoggedIn = true;
    notifyListeners();
  }

  void setLoginFalse() {
    isLoggedIn = false;
    notifyListeners();
  }
}
