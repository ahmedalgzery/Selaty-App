import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OffersButton extends StatelessWidget {
  const OffersButton({super.key, required this.color, required this.child});
  final Color color;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
        padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.w),
        height: 100.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.r), color: color),
        child: child,
      ),
    );
  }
}
