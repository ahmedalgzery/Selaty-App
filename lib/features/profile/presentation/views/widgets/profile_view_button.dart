import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/core/utils/styles.dart';

class ProfileViewButton extends StatelessWidget {
  const ProfileViewButton({
    super.key,
    required this.icon,
    required this.text,
  });
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 100.h,
        margin: EdgeInsets.symmetric(horizontal: 5.w, vertical: 10.h),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(32.r), color: Colors.white),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: const Color.fromRGBO(238, 80, 94, 1),
              size: 35.w,
            ),
            Text(
              text,
              style: Styles.textStyle20.copyWith(
                color: const Color(0xFFEE505E),
              ),
              textAlign: TextAlign.right,
            )
          ],
        ),
      ),
    );
  }
}
