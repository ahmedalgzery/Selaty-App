import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/core/widgets/custom_app_bar.dart';
import 'package:selaty/features/password/presentation/views/widgets/password_view_body.dart';

class PasswordView extends StatelessWidget {
  const PasswordView({super.key});
  static const String kPasswordView = '/passwordView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 100.h),
        child: const CustomAppBar(title: 'تغير كلمة المرور'),
      ),
      body:const PasswordViewBody() ,
    );
  }
}
