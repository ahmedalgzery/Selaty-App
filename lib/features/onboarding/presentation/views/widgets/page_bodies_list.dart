import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/core/utils/styles.dart';

List<Widget> pageBodiesList = [
  Container(
    padding: EdgeInsets.symmetric(horizontal: 20.w),
    width: double.infinity,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        SizedBox(
          height: 380.h,
        ),
        Text(
          'البحث بالقرب منك',
          textAlign: TextAlign.right,
          style: Styles.textStyle30.copyWith(color: Colors.red),
        ),
        SizedBox(
          height: 10.h,
        ),
        Text(
          'ابحث عن المتاجر المفضلة التى تريدها بموقعك أو حيك',
          style: Styles.textStyle20,
          textAlign: TextAlign.right,
        ),
      ],
    ),
  ),
  Container(
    padding: EdgeInsets.symmetric(horizontal: 20.w),
    width: double.infinity,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        SizedBox(
          height: 380.h,
        ),
        Text(
          'عروض طازجة وجودة',
          textAlign: TextAlign.right,
          style: Styles.textStyle30.copyWith(color: Colors.green),
        ),
        SizedBox(
          height: 10.h,
        ),
        Text(
          'جميع العناصر لها نضارة حقيقية وهى مخصص لاحتياجك',
          style: Styles.textStyle20,
          textAlign: TextAlign.right,
        ),
      ],
    ),
  ),
  Container(
    padding: EdgeInsets.symmetric(horizontal: 20.w),
    width: double.infinity,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        SizedBox(
          height: 380.h,
        ),
        Text(
          'تسليم سريع للمنزل',
          textAlign: TextAlign.right,
          style: Styles.textStyle30.copyWith(color:const Color(0xFF736C8B)),
        ),
        SizedBox(
          height: 10.h,
        ),
        Text(
          'جميع العناصر لها نضارة حقيقية وهى مخصص لاحتياجك',
          style: Styles.textStyle20,
          textAlign: TextAlign.right,
        ),
      ],
    ),
  ),
];
