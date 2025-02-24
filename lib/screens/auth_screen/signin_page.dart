import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:theharvesthub/components/custom_buttons/custom_button.dart';
import 'package:theharvesthub/components/custom_text_fields/custom_text_fields.dart';
import 'package:theharvesthub/components/custom_texts/custom_text.dart';
import 'package:theharvesthub/screens/auth_screen/forgot_password_page.dart';
import 'package:theharvesthub/screens/auth_screen/signup_page.dart';
import 'package:theharvesthub/screens/home_screen/Home_Page/home_page.dart';
import 'package:theharvesthub/utills/custom_navigators.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Logo
                Image.asset(
                  'assets/images/logo.png',
                  height: 100,
                ),
                const SizedBox(height: 20),

                // Title
                const CustomText(
                  text: "The Harvest Hub",
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                const SizedBox(height: 10),
                const CustomText(
                  text: "Please fill in your details to access your account.",
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                ),
                const SizedBox(height: 30),

                // Email Field
                CustomTextField(
                  labelText: "Email",
                  hintText: "Enter your Email",
                  prefixIcon: const Icon(Icons.email),
                  controller: emailController,
                ),
                const SizedBox(height: 15),

                // Password Field
                CustomTextField(
                  labelText: "Password",
                  hintText: "Enter your password",
                  prefixIcon: const Icon(Icons.lock),
                  isPassword: true,
                  controller: passwordController,
                ),
                const SizedBox(height: 10),

                // Remember Me & Forgot Password
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          value: false,
                          onChanged: (val) {},
                          shape: const CircleBorder(),
                        ),
                        const CustomText(
                          text: "Remember me",
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        CustomNavigators.goTo(
                            context, const ForgotPasswordPage());
                      },
                      child: const CustomText(
                        text: "Forgot Password?",
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                // Sign In Button
                GestureDetector(
                  onTap: () {
                    CustomNavigators.goTo(context, const HomePage());
                  },
                  child: CustomButton(
                    text: "Sign in",
                    bgColor: Colors.green.shade700,
                    size: size,
                  ),
                ),
                const SizedBox(height: 20),

                // Sign Up Link
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CustomText(
                      text: "Don't have an account? ",
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                    GestureDetector(
                      onTap: () {
                        CustomNavigators.goTo(context, const SignUpPage());
                      },
                      child: const CustomText(
                        text: "Sign Up",
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
