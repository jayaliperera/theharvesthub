import 'package:flutter/material.dart';
import 'package:theharvesthub/components/custom_texts/custom_text.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.size,
      required this.text,
      required this.bgColor,
      required Null Function() onTap});

  final Size size;
  final String text;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: size.width * 0.7,
        height: 45,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: bgColor),
        child: Center(
          child: CustomText(
            text: text,
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
