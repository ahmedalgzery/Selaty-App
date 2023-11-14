import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/core/utils/assets.dart';

class HomeViewAd extends StatelessWidget {
  const HomeViewAd({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 180.h,
      margin: EdgeInsets.symmetric(horizontal: 15.w),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          image: const DecorationImage(
              image: AssetImage(AssetesData.fruit), fit: BoxFit.fitWidth)),
    );
  }
}
