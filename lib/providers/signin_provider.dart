import 'package:flutter/material.dart';
import 'package:theharvesthub/controllers/auth_controller.dart';

class SigninProvider extends ChangeNotifier {
  AuthController authController = AuthController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _resetEmailController = TextEditingController();

  TextEditingController get emailController => _emailController;
  TextEditingController get passwordController => _passwordController;
  TextEditingController get resetEmailController => _resetEmailController;

  Future<void> startSignIn() async {
    if (_emailController.text.trim().isEmpty ||
        _passwordController.text.trim().isEmpty) {
      print("APPPLOG :: Invalid data");
    } else {
      bool isSuccess = await authController.signInWithPassword(
          email: _emailController.text, password: _passwordController.text);
      if (isSuccess) {
        clearTextField();
      }
    }
  }

  Future<void> sendResetEmail() async {
    if (_resetEmailController.text.trim().isEmpty) {
      print("APPPLOG :: Please enter your email");
    } else {
      authController.sendPasswordResetEmail(_resetEmailController.text).then(
        (value) {
          clearTextField();
        },
      );
    }
  }

  void clearTextField() {
    _emailController.clear();
    _passwordController.clear();
    _resetEmailController.clear();
    notifyListeners();
  }
}
