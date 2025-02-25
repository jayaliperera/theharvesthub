import 'package:flutter/material.dart';
import 'package:theharvesthub/components/custom_buttons/custom_button.dart';
import 'package:theharvesthub/components/custom_text_fields/custom_text_fields.dart';
import 'package:theharvesthub/components/custom_texts/custom_text.dart';
import 'package:theharvesthub/controllers/auth_controller.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomText(
              text: "The Harvest Hub",
              fontSize: 30,
              fontWeight: FontWeight.w500,
            ),
            const CustomText(
              text: "Create new account with your email & password.",
              fontSize: 15,
              fontWeight: FontWeight.w400,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextField(
              labelText: "Email",
              hintText: "Enter your Email",
              prefixIcon: const Icon(Icons.email),
              controller: emailController,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextField(
              labelText: "Password",
              hintText: "Enter your password",
              prefixIcon: const Icon(Icons.password),
              isPassword: true,
              controller: passwordController,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextField(
              labelText: "Confirm Password",
              hintText: "Enter your password",
              prefixIcon: const Icon(Icons.password),
              isPassword: true,
              controller: confirmPasswordController,
            ),
            const SizedBox(
              height: 5,
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {},
              child: CustomButton(
                  text: "Create Account",
                  bgColor: Colors.green.shade700,
                  size: size),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
                child: InkWell(
              onTap: () {
                if (emailController.text.trim().isEmpty ||
                    passwordController.text.trim().isEmpty ||
                    passwordController.text.trim !=
                        confirmPasswordController.text) {
                  print("Invalid data");
                } else {
                  AuthController().createAccount(
                      email: emailController.text,
                      password: passwordController.text);
                }
                Navigator.pop(context);
              },
              child: const Text.rich(
                  TextSpan(text: "Already have an account? ", children: [
                TextSpan(text: "Sign In", style: TextStyle(color: Colors.green))
              ])),
            ))
          ],
        ),
      ),
    ));
  }
}
