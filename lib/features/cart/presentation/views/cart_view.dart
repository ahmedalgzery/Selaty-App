import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/constant.dart';
import 'package:selaty/core/widgets/custom_app_bar.dart';
import 'package:selaty/features/cart/presentation/views/widgets/empty_cart_view_body.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});
  static const String kCartView = '/cartView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondColor,
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 50.h),
        child: const CustomAppBar(title: 'عربة التسوق'),
      ),
      body: const EmptyCartView(),
    );
  }
}
