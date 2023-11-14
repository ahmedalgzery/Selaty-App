import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:selaty/core/widgets/custom_button.dart';
import 'package:selaty/features/auth/presentation/views/widgets/auth_logo.dart';
import 'package:selaty/features/login/presentation/views/login_view.dart';
import 'package:selaty/features/register/presentation/views/register_view.dart';

class AuthViewBody extends StatelessWidget {
  const AuthViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const AuthLogo(),
          SizedBox(
            height: 35.h,
          ),
          CustomButton(
              color: Colors.red,
              text: 'تسجيل الدخول',
              onPressed: () {
                GoRouter.of(context).push(LoginView.kLoginView);
              }),
          SizedBox(
            height: 20.h,
          ),
          CustomButton(
              text: 'انشئ حساب',
              onPressed: () {
                GoRouter.of(context).push(RegisterView.kRegisterView);
              }),
        ],
      ),
    );
  }
}
