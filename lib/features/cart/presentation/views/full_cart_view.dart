import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/constant.dart';
import 'package:selaty/core/widgets/custom_app_bar.dart';
import 'package:selaty/features/cart/presentation/views/widgets/full_cart_view_body.dart';

class FullCartView extends StatelessWidget {
  const FullCartView({super.key});
  static const String kFullCartView = '/fullCartView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondColor,
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 50.h),
        child: const CustomAppBar(title: 'عربة التسوق'),
      ),
      body: const FullCartViewBody(),
    );
  }
}
