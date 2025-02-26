import 'package:flutter/material.dart';
import 'package:theharvesthub/controllers/auth_controller.dart';

class SigninProvider extends ChangeNotifier {
  AuthController authController = AuthController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  TextEditingController get emailController => _emailController;
  TextEditingController get passwordController => _passwordController;

  Future<void> startSignIn() async {
    if (_emailController.text.trim().isEmpty ||
        _passwordController.text.trim().isEmpty) {
      print("APPPLOG :: Invalid data");
    } else {
      authController
          .signInWithPassword(
              email: _emailController.text, password: _passwordController.text)
          .then(
        (value) {
          clearTextField();
        },
      );
    }
  }

  void clearTextField() {
    _emailController.clear();
    _passwordController.clear();
    notifyListeners();
  }
}
