import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/constant.dart';
import 'package:selaty/core/utils/styles.dart';

class ProductItemAppBar extends StatelessWidget {
  const ProductItemAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.all(8.0.w),
          child: const Icon(
            Icons.favorite,
            color: kPrimaryColor,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 8.h),
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16.r),
                bottomLeft: Radius.circular(16.r),
              ),
              color: Colors.red),
          child: Text(
            'جديد',
            style: Styles.textStyle10.copyWith(color: Colors.white),
            textAlign: TextAlign.right,
          ),
        )
      ],
    );
  }
}
