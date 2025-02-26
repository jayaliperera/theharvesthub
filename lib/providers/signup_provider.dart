import 'package:flutter/material.dart';
import 'package:theharvesthub/controllers/auth_controller.dart';

class SignupProvider extends ChangeNotifier {
  AuthController authController = AuthController();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  TextEditingController get emailController => _emailController;
  TextEditingController get passwordController => _passwordController;
  TextEditingController get confirmPasswordController =>
      _confirmPasswordController;

  Future<void> startSignUp() async {
    if (_emailController.text.trim().isEmpty ||
        _passwordController.text.trim().isEmpty ||
        _passwordController.text.trim() !=
            _confirmPasswordController.text.trim()) {
      print("APPPLOG :: Invalid data");
    } else {
      authController.createAccount(
          email: emailController.text, password: passwordController.text);
    }
  }
}
