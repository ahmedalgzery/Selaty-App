import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:selaty/core/utils/styles.dart';
import 'package:selaty/core/widgets/custom_button.dart';
import 'package:selaty/features/phone/presentation/view/widgets/phone_field.dart';
import 'package:selaty/features/verify_code/presentation/view/verify_code_view.dart';

class PhoneViewBody extends StatelessWidget {
  const PhoneViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              'لقد ارسلنا رسالة نصية قصيرة تحتوى على رمز الى رقم 01013784288',
              style: Styles.textStyle16.copyWith(color: Colors.grey),
              textAlign: TextAlign.right,
            ),
            SizedBox(
              height: 100.h,
            ),
            const PhoneField(),
            SizedBox(
              height: 20.h,
            ),
            CustomButton(
                text: 'تأكيد',
                onPressed: () {
                  GoRouter.of(context).push(VerifyCodeView.kCodeView);
                })
          ],
        ),
      ),
    );
  }
}
