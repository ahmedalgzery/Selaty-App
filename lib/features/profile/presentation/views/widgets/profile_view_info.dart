import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/constant.dart';
import 'package:selaty/core/utils/styles.dart';

class ProfileViewInfo extends StatelessWidget {
  const ProfileViewInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150.h,
      padding: EdgeInsets.symmetric(vertical: 10.h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: kPrimaryColor),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            'أحمد الجزيرى',
            style: Styles.textStyle20.copyWith(color: Colors.white),
            textAlign: TextAlign.right,
          ),
          Text(
            'algzeryahmed14@gmail.com',
            style: Styles.textStyle14.copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
