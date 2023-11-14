import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:selaty/core/utils/styles.dart';
import 'package:selaty/core/widgets/bottom_bar.dart';

class PasswordSuccessViewBody extends StatelessWidget {
  const PasswordSuccessViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity - 50.w,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DottedBorder(
            color: Colors.white,
            strokeWidth: 2,
            dashPattern: const [3, 3],
            padding: EdgeInsets.all(45.w),
            borderType: BorderType.Circle,
            child: RotatedBox(
              quarterTurns: 6,
              child: Icon(
                FontAwesomeIcons.key,
                size: 150.w,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          Text(
            'كلمة المرور الخاصة بك لها ',
            style: Styles.textStyle20.copyWith(color: Colors.white),
            textAlign: TextAlign.right,
          ),
          SizedBox(
            height: 30.h,
          ),
          TextButton(
            onPressed: () {
              GoRouter.of(context).push(BottomBar.kBottomBar);
            },
            style: TextButton.styleFrom(
                backgroundColor: Colors.white, minimumSize: Size(200.w, 10.h)),
            child: Text(
              'تم',
              style: Styles.textStyle24.copyWith(color: Colors.red),
              textAlign: TextAlign.right,
            ),
          ),
        ],
      ),
    );
  }
}
