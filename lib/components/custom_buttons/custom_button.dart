import 'package:flutter/material.dart';
import 'package:theharvesthub/components/custom_texts/custom_text.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.size,
      required this.text,
      required this.bgColor,
      required this.onTap});

  final Size size;
  final String text;
  final Color bgColor;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: size.width * 0.7,
          height: 45,
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Center(
            child: CustomText(
              text: text,
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
