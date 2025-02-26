import 'package:flutter/material.dart';
import 'package:theharvesthub/components/custom_buttons/custom_button.dart';
import 'package:theharvesthub/components/custom_text_fields/custom_text_fields.dart';
import 'package:theharvesthub/components/custom_texts/custom_text.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<ForgotPasswordPage> {
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Row(
                children: [
                  BackButton(),
                  CustomText(
                      text: "Reset Your Password",
                      fontSize: 25,
                      fontWeight: FontWeight.w900),
                ],
              ),
              // const SizedBox(
              //   height: 2,
              // ),
              const CustomText(
                  text: "Insert your email and get password reset email.",
                  fontSize: 17,
                  fontWeight: FontWeight.w400),
              const SizedBox(
                height: 10,
              ),
              CustomTextField(
                  labelText: "Email",
                  hintText: "Enter your email",
                  prefixIcon: const Icon(Icons.email),
                  controller: emailController),
              const SizedBox(
                height: 10,
              ),
              CustomButton(
                  size: size,
                  text: "Send Reset Email",
                  bgColor: Colors.green.shade700)
            ],
          ),
        ),
      ),
    );
  }
}
