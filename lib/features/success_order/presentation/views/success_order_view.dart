import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/constant.dart';
import 'package:selaty/core/widgets/custom_app_bar.dart';
import 'package:selaty/features/success_order/presentation/views/widgets/success_order_view_body.dart';

class SuccessOrderView extends StatelessWidget {
  const SuccessOrderView({super.key});
  static const String kSuccessOrderView = '/successOrderView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondColor,
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 50.h),
        child: const CustomAppBar(title: 'طلب نجاح'),
      ),
      body: const SuccessOrderViewBody(),
    );
  }
}