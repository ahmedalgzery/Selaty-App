import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/core/utils/styles.dart';
import 'package:selaty/features/verify_code/presentation/view/widgets/verifcation_code_field.dart';

class VerifyCodeViewBody extends StatefulWidget {
  const VerifyCodeViewBody({super.key});

  @override
  State<VerifyCodeViewBody> createState() => _VerifyCodeViewBodyState();
}

class _VerifyCodeViewBodyState extends State<VerifyCodeViewBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              'أدخل رمز OPT الخاص بك هنا ',
              style: Styles.textStyle18.copyWith(color: Colors.grey),
              textAlign: TextAlign.right,
            ),
            SizedBox(
              height: 80.h,
            ),
            const VerifcationCodeField(),
            SizedBox(
              height: 10.h,
            ),
            Text(
              'لم يصل الكود ؟',
              style: Styles.textStyle16.copyWith(color: Colors.grey),
              textAlign: TextAlign.right,
            ),
            SizedBox(
              height: 5.h,
            ),
            TextButton(
              onPressed: () {
                
              },
              child: Text(
                'اعادة ارسال رمز جديد',
                style: Styles.textStyle18.copyWith(color: Colors.red),
                textAlign: TextAlign.right,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
