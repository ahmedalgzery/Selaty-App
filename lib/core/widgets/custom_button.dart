import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/constant.dart';
import 'package:selaty/core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      this.color = kPrimaryColor,
      required this.text,
      required this.onPressed});
  final Color color;
  final String text;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          backgroundColor: color, minimumSize: Size(double.infinity, 45.h)),
      child: Text(
        text,
        style: Styles.textStyle20.copyWith(color: Colors.white),
      ),
    );
  }
}
