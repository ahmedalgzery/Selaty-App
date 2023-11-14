
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingViewIcons extends StatelessWidget {
  const OnboardingViewIcons(
      {super.key,
      required this.radius,
      required this.color,
      required this.icon});
  final double radius;
  final Color color;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 50.h),
      child: Stack(
        alignment: Alignment.center,
        children: [
          CircleAvatar(
            radius: radius.r * 1.6,
            backgroundColor: color.withOpacity(.2),
          ),
          CircleAvatar(
            radius: radius.r * 1.3,
            backgroundColor: color.withOpacity(.3),
          ),
          CircleAvatar(
            radius: radius.r,
            backgroundColor: color,
            child: Icon(
              icon,
              size: radius.r,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
