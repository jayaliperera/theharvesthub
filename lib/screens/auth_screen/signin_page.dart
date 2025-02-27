import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theharvesthub/components/custom_buttons/custom_button.dart';
import 'package:theharvesthub/components/custom_text_fields/custom_text_fields.dart';
import 'package:theharvesthub/components/custom_texts/custom_text.dart';
import 'package:theharvesthub/providers/signin_provider.dart';
import 'package:theharvesthub/screens/auth_screen/forgot_password_page.dart';
import 'package:theharvesthub/screens/auth_screen/signup_page.dart';
import 'package:theharvesthub/utills/custom_navigators.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Consumer<SigninProvider>(builder: (context, value, child) {
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
                text: "Please fill your details to access the account.",
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
                height: 5,
              ),
              Row(
                children: [
                  Checkbox(
                    value: false,
                    onChanged: (val) {},
                    shape: const OvalBorder(),
                  ),
                  const CustomText(
                      text: "Remeber me",
                      fontSize: 15,
                      fontWeight: FontWeight.w400),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      CustomNavigators.goTo(
                          context, const ForgotPasswordPage());
                    },
                    child: const CustomText(
                      text: "Forgot Password?",
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.greenAccent,
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  value.startSignIn();
                },
                child: CustomButton(
                    text: "Sign in",
                    bgColor: Colors.green.shade700,
                    size: size),
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                  child: InkWell(
                onTap: () {
                  CustomNavigators.goTo(context, const SignUpPage());
                },
                child: const Text.rich(TextSpan(
                    text: "Don't you have an account? ",
                    children: [
                      TextSpan(
                          text: "Sign Up",
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
