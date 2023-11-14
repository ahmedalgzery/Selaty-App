
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/core/utils/styles.dart';

class ProfileFooterButton extends StatelessWidget {
  const ProfileFooterButton({
    super.key,
    required this.color,
    required this.icon,
    required this.text,
  });
  final Color color;
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 130.h,
        margin: EdgeInsets.symmetric(horizontal: 5.w),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24.r), color: color),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 60.h,
              width: 65.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24.r),
                  color: Colors.white.withOpacity(.5)),
              child: Icon(icon),
            ),
            Text(
              text,
              style: Styles.textStyle20.copyWith(color: Colors.white),
              textAlign: TextAlign.right,
            )
          ],
        ),
      ),
    );
  }
}
