import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theharvesthub/components/custom_buttons/custom_button.dart';
import 'package:theharvesthub/components/custom_text_fields/custom_text_fields.dart';
import 'package:theharvesthub/components/custom_texts/custom_text.dart';
import 'package:theharvesthub/providers/signup_provider.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Consumer<SignupProvider>(builder: (context, value, child) {
          return Column(
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
                controller: value.emailController,
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextField(
                labelText: "Password",
                hintText: "Enter your password",
                prefixIcon: const Icon(Icons.password),
                isPassword: true,
                controller: value.passwordController,
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextField(
                labelText: "Confirm Password",
                hintText: "Enter your password",
                prefixIcon: const Icon(Icons.password),
                isPassword: true,
                controller: value.confirmPasswordController,
              ),
              const SizedBox(
                height: 5,
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  value.startSignUp();
                },
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
                  Navigator.pop(context);
                },
                child: const Text.rich(TextSpan(
                    text: "Already have an account? ",
                    children: [
                      TextSpan(
                          text: "Sign In",
                          style: TextStyle(color: Colors.green))
                    ])),
              ))
            ],
          );
        }),
      ),
    ));
  }
}
