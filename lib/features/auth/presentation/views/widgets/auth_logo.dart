import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/core/utils/assets.dart';
import 'package:selaty/core/utils/styles.dart';

class AuthLogo extends StatelessWidget {
  const AuthLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          AssetesData.logo,
          width: 150.w,
          height: 150.h,
        ),
        Column(
          children: [
            Text(
              'ســـــلتي',
              style: Styles.textStyle30.copyWith(
                color: Colors.red,
              ),
            ),
            Text(
              'SELATY',
              style: Styles.textStyle20.copyWith(letterSpacing: 5),
            ),
          ],
        )
      ],
    );
  }
}
