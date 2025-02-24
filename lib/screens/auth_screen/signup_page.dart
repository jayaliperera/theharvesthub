import 'package:flutter/material.dart';
import 'package:theharvesthub/components/custom_buttons/custom_button.dart';
import 'package:theharvesthub/components/custom_text_fields/custom_text_fields.dart';
import 'package:theharvesthub/components/custom_texts/custom_text.dart';

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
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/logo.png',
                        height: 100,
                      ),
                      const SizedBox(height: 30),
                      const CustomText(
                        text: "The Harvest Hub",
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                const CustomText(
                  text: "Create a new account with your email & password.",
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.black54,
                ),
                const SizedBox(height: 30),
                CustomTextField(
                  labelText: "Email",
                  hintText: "Enter your Email",
                  prefixIcon: const Icon(Icons.email),
                  controller: emailController,
                ),
                const SizedBox(height: 20),
                CustomTextField(
                  labelText: "Password",
                  hintText: "Enter your password",
                  prefixIcon: const Icon(Icons.lock),
                  isPassword: true,
                  controller: passwordController,
                ),
                const SizedBox(height: 20),
                CustomTextField(
                  labelText: "Confirm Password",
                  hintText: "Confirm your password",
                  prefixIcon: const Icon(Icons.lock),
                  isPassword: true,
                  controller: confirmPasswordController,
                ),
                const SizedBox(height: 30),
                GestureDetector(
                  onTap: () {},
                  child: CustomButton(
                    text: "Create Account",
                    bgColor: Colors.green.shade700,
                    size: size,
                  ),
                ),
                const SizedBox(height: 20),
                Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Text.rich(
                      TextSpan(
                        text: "Already have an account? ",
                        children: [
                          TextSpan(
                            text: "Sign In",
                            style: TextStyle(color: Colors.green),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
