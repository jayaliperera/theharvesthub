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
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 24.0, vertical: 32.0), // Increase padding
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Centered Logo with reduced size
                Center(
                  child: Image.asset(
                    'assets/images/logo.png',
                    height: 100,
                    width: 100,
                  ),
                ),
                const SizedBox(height: 20),

                // Title with enhanced font styling and shadow
                const Center(
                  child: CustomText(
                    text: "The Harvest Hub",
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.greenAccent,
                  ),
                ),
                const SizedBox(height: 10),
                const CustomText(
                  text: "Please fill your details to access the account.",
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                ),
                const SizedBox(height: 30),

                // Email Field with rounded corners and shadow
                CustomTextField(
                  labelText: "Email",
                  hintText: "Enter your Email",
                  prefixIcon: const Icon(Icons.email),
                  controller: emailController,
                  borderRadius: BorderRadius.circular(12), // Rounded corners
                  boxShadow: const [
                    BoxShadow(
                        blurRadius: 4,
                        color: Colors.black12,
                        offset: Offset(0, 2))
                  ], // Shadow
                ),
                const SizedBox(height: 15),

                // Password Field with rounded corners and shadow
                CustomTextField(
                  labelText: "Password",
                  hintText: "Enter your password",
                  prefixIcon: const Icon(Icons.password),
                  isPassword: true,
                  controller: passwordController,
                  borderRadius: BorderRadius.circular(12), // Rounded corners
                  boxShadow: const [
                    BoxShadow(
                        blurRadius: 4,
                        color: Colors.black12,
                        offset: Offset(0, 2))
                  ], // Shadow
                ),
                const SizedBox(height: 10),

                // Remember Me & Forgot Password with spacing
                Row(
                  children: [
                    Checkbox(
                      value: false,
                      onChanged: (val) {},
                      shape: const OvalBorder(),
                    ),
                    const CustomText(
                      text: "Remember me",
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
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
                  ],
                ),
                const SizedBox(height: 20),

                // Sign In Button with enhanced styling
                GestureDetector(
                  onTap: () {
                    CustomNavigators.goTo(context, const HomePage());
                  },
                  child: CustomButton(
                    text: "Sign in",
                    bgColor: Colors.green.shade700,
                    size: size,
                    borderRadius: BorderRadius.circular(12), // Rounded corners
                    boxShadow: const [
                      BoxShadow(
                          blurRadius: 4,
                          color: Colors.black26,
                          offset: Offset(0, 4))
                    ], // Shadow
                  ),
                ),
                const SizedBox(height: 20),

                // Sign Up Link with hover effect styling
                Center(
                  child: InkWell(
                    onTap: () {
                      CustomNavigators.goTo(context, const SignUpPage());
                    },
                    child: const Text.rich(
                      TextSpan(
                        text: "Don't have an account? ",
                        children: [
                          TextSpan(
                            text: "Sign Up",
                            style: TextStyle(
                                color: Colors.greenAccent,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
