import 'package:flutter/material.dart';
import 'package:theharvesthub/forgot_password_screen.dart';
import 'package:theharvesthub/home_screen.dart';
import 'packagetheharvesthub/signup_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  // Method to handle forgot password action
  void _handleForgotPassword(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ForgotPasswordScreen()),
    );
  }

  InputDecoration customInputDecoration(String labelText, {bool isPasswordField = false}) {
    return InputDecoration(
      labelText: labelText,
      filled: true,
      fillColor: Colors.white,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16.0),
        borderSide: BorderSide.none,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16.0),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16.0),
        borderSide: BorderSide.none,
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
      floatingLabelBehavior: FloatingLabelBehavior.auto,
      labelStyle: TextStyle(color: Colors.grey[700]),
      hintStyle: TextStyle(color: Colors.grey[400]),
    );
  }

  Widget customTextField(String labelText, {bool obscureText = false, TextInputType keyboardType = TextInputType.text}) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: TextField(
        obscureText: obscureText,
        keyboardType: keyboardType,
        decoration: customInputDecoration(labelText, isPasswordField: obscureText),
      ),
    );
  }

  