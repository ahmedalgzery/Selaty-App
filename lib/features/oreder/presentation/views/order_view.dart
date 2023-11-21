import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/constant.dart';
import 'package:selaty/core/widgets/custom_app_bar.dart';
import 'package:selaty/features/oreder/presentation/views/widgets/order_view_body.dart';

class OrderView extends StatelessWidget {
  const OrderView({super.key});
  static const String kOrderView = '/orederView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondColor,
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 50.h),
        child: const CustomAppBar(title: 'ترتيب المسار'),
      ),
      body: OrderViewBody(),
    );
  }
}
