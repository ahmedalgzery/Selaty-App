import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:selaty/core/utils/styles.dart';
import 'package:selaty/core/widgets/custom_button.dart';
import 'package:selaty/features/phone/presentation/view/phone_view.dart';
import 'package:selaty/features/register/presentation/views/widgets/footer.dart';
import 'package:selaty/features/register/presentation/views/widgets/sochial_button_section.dart';
import 'package:selaty/features/register/presentation/views/widgets/register_field_section.dart';

class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              'أنشاء حساب جديد',
              style: Styles.textStyle28,
              textAlign: TextAlign.right,
            ),
            Text(
              'أدخل بياناتك لانشاء حساب ',
              style: Styles.textStyle18.copyWith(color: Colors.grey),
              textAlign: TextAlign.right,
            ),
            const RegisterFieldSection(),
            SizedBox(height: 15.h),
            CustomButton(
                text: 'اشتراك',
                onPressed: () {
                  GoRouter.of(context).push(PhoneView.kPhoneView);
                }),
            SizedBox(height: 15.h),
            Center(
              child: Text(
                'أو اشترك مع',
                style: Styles.textStyle20,
              ),
            ),
            SizedBox(height: 15.h),
            const SochialButtonSection(),
            SizedBox(height: 30.h),
            const Footer(),
            SizedBox(height: 30.h),
          ],
        ),
      ),
    );
  }
}
