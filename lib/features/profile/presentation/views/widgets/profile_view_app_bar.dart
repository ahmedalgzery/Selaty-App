import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/constant.dart';
import 'package:selaty/core/widgets/custom_app_bar.dart';

class ProfileViewAppBar extends StatelessWidget {
  const ProfileViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: kSecondColor,
      height: 150.h,
      child: const CustomAppBar(
        title: '',
        borderIconColor: Colors.white,
        titleColor: Colors.white,
      ),
    );
  }
}