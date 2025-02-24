import 'package:flutter/material.dart';
import 'package:theharvesthub/components/custom_buttons/custom_button.dart';
import 'package:theharvesthub/components/custom_text_fields/custom_text_fields.dart';
import 'package:theharvesthub/components/custom_texts/custom_text.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  TextEditingController emailController = TextEditingController();

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
                const SizedBox(height: 40),
                Image.asset(
                  'assets/images/logo.png',
                  height: 100,
                ),
                const SizedBox(height: 20),
                const CustomText(
                  text: "Reset Your Password",
                  fontSize: 25,
                  fontWeight: FontWeight.w900,
                ),
                const SizedBox(height: 30),
                const CustomText(
                  text: "Insert your email and get a password reset email.",
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  color: Colors.black54,
                ),
                const SizedBox(height: 30),
                CustomTextField(
                  labelText: "Email",
                  hintText: "Enter your email",
                  prefixIcon: const Icon(Icons.email),
                  controller: emailController,
                ),
                const SizedBox(height: 30),
                GestureDetector(
                  onTap: () {},
                  child: CustomButton(
                    size: size,
                    text: "Send Reset Email",
                    bgColor: Colors.orange.shade700,
                  ),
                ),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
