import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:selaty/core/utils/styles.dart';
import 'package:selaty/core/widgets/custom_button.dart';
import 'package:selaty/features/auth/presentation/views/widgets/auth_logo.dart';
import 'package:selaty/features/login/presentation/views/widgets/login_field_section.dart';
import 'package:selaty/features/phone/presentation/view/phone_view.dart';
import 'package:selaty/features/register/presentation/views/widgets/footer.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({
    super.key,
  });

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
            SizedBox(height: 45.h),
            const AuthLogo(),
            SizedBox(height: 15.h),
            const LoginFieldSection(),
            SizedBox(height: 15.h),
            CustomButton(
                text: 'تسجيل الدخول',
                onPressed: () {
                  GoRouter.of(context).push(PhoneView.kPhoneView);
                }),
            SizedBox(height: 15.h),
            TextButton(
              onPressed: () {},
              child: Text(
                'هل نسيت كلمة السر',
                style: Styles.textStyle18,
              ),
            ),
            SizedBox(height: 30.h),
            const Footer(),
            SizedBox(height: 30.h),
          ],
        ),
      ),
    );
  }
}
