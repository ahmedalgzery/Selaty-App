import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/core/widgets/custom_app_bar.dart';
import 'package:selaty/features/verify_code/presentation/view/widgets/verify_code_view_body.dart';

class VerifyCodeView extends StatelessWidget {
  const VerifyCodeView({super.key});
  static const String kCodeView = '/codeView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 100.h),
        child: const CustomAppBar(title: 'التحفف من الهاتف',),

      ),
      body: const VerifyCodeViewBody(),
    );
  }
}
