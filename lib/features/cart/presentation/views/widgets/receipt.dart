import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/core/utils/styles.dart';

class Receipt extends StatelessWidget {
  const Receipt({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 130.h,
      margin: EdgeInsets.symmetric(horizontal: 10.w),
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        color: Colors.white,
      ),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '4',
              style: Styles.textStyle16.copyWith(color: Colors.grey),
            ),
            Text(
              'البنود ',
              style: Styles.textStyle16.copyWith(color: Colors.grey),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '\$100.00 ',
              style: Styles.textStyle16.copyWith(color: Colors.grey),
            ),
            Text(
              'المجموع الفرعى',
              style: Styles.textStyle16.copyWith(color: Colors.grey),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Free',
              style: Styles.textStyle16.copyWith(color: Colors.grey),
            ),
            Text(
              'رسوم التوصيل',
              style: Styles.textStyle16.copyWith(color: Colors.grey),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('100.00 SAR', style: Styles.textStyle20),
            Text('الاجمالي', style: Styles.textStyle20),
          ],
        ),
      ]),
    );
  }
}
