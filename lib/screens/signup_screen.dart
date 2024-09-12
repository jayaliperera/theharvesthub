import 'package:flutter/material.dart';
import 'package:theharvesthub/login_screen.dart';

class SignUp_Screen extends StatefulWidget {
  const SignUp_Screen({super.key});
  @override
  State<SignUp_Screen> createState() => _SignUp_ScreenState();
}
class _SignUp_ScreenState extends State<SignUp_Screen> {
  bool isBuyer = true;
  bool isPasswordVisible = false;
  bool isConfirmPasswordVisible = false;
  final TextEditingController displayNameController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  InputDecoration customInputDecoration(String labelText,
      {bool isPasswordField = false, bool isConfirmPasswordField = false}) {
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
      contentPadding:
          const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
      floatingLabelBehavior: FloatingLabelBehavior.auto,
      labelStyle: TextStyle(color: Colors.grey[700]),
      hintStyle: TextStyle(color: Colors.grey[400]),
      suffixIcon: isPasswordField
          ? IconButton(
              icon: Icon(
                isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                color: Colors.grey,
              ),
              onPressed: () {
                setState(() {
                  isPasswordVisible = !isPasswordVisible;
                });
              },
            )
          : isConfirmPasswordField
              ? IconButton(
                  icon: Icon(
                    isConfirmPasswordVisible
                        ? Icons.visibility
                        : Icons.visibility_off,
                    color: Colors.grey,
                  ),
                  onPressed: () {
                    setState(() {
                      isConfirmPasswordVisible = !isConfirmPasswordVisible;
                    });
                  },
                )
              : null,
    );
  }

Widget customTextField(String labelText, TextEditingController controller,
      {bool obscureText = false,
      bool isPasswordField = false,
      bool isConfirmPasswordField = false,
      TextInputType keyboardType = TextInputType.text}) {
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
        controller: controller,
        obscureText: obscureText,
        keyboardType: keyboardType,
        decoration: customInputDecoration(labelText,
            isPasswordField: isPasswordField,
            isConfirmPasswordField: isConfirmPasswordField),
      ),
    );
  }

void switchRole(bool toBuyer) {
    setState(() {
      isBuyer = toBuyer;
      if (toBuyer) {
        // Clear Seller-specific fields when switching to Buyer
        displayNameController.clear();
        addressController.clear();
      } else {
        // Clear Buyer-specific fields when switching to Seller
        usernameController.clear();
        passwordController.clear();
        confirmPasswordController.clear();
        emailController.clear();
        phoneNumberController.clear();
      }
    });
  }



}
