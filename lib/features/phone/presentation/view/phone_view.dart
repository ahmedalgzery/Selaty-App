import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/core/widgets/custom_app_bar.dart';
import 'package:selaty/features/phone/presentation/view/widgets/phone_view_body.dart';

class PhoneView extends StatelessWidget {
  const PhoneView({super.key});
  static const String kPhoneView = '/phoneView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 100.h),
        child: const CustomAppBar(title: 'تحقق من الهاتف',),

      ),
      body: const PhoneViewBody(),
    );
  }
}

