// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:selaty/core/widgets/custom_button.dart';
import 'package:selaty/features/address/presentation/views/address_view.dart';
import 'package:selaty/features/cart/presentation/views/widgets/full_cart_list_view.dart';
import 'package:selaty/features/cart/presentation/views/widgets/receipt.dart';

class FullCartViewBody extends StatelessWidget {
  const FullCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const FullCartIistView(),
        const Receipt(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 10.w),
          child: CustomButton(
              text: 'الدفع',
              onPressed: () {
                GoRouter.of(context).push(AddressView.kAddressView);
              }),
        ),
      ],
    );
  }
}
