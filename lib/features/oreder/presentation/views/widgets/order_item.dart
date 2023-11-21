import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:selaty/constant.dart';
import 'package:selaty/core/utils/styles.dart';

class OrderItem extends StatelessWidget {
  const OrderItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150.h,
      margin: EdgeInsets.symmetric(horizontal: 10.w),
      padding: EdgeInsets.symmetric(horizontal: 5.w),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.r), color: kPrimaryColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 50.r,
            backgroundColor: Colors.white,
            child: Icon(
              FontAwesomeIcons.basketShopping,
              size: 50.r,
              color: Colors.black,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'معرف الطلب : # OD2204',
                style: Styles.textStyle20.copyWith(color: Colors.white),
              ),
              Text(
                '2023 (يناير)تاريخ النشر 26 كانون الثانى ',
                textAlign: TextAlign.right,
                style: Styles.textStyle14.copyWith(color: Colors.white),
              ),
              Row(
                children: [
                  Text(
                    'الجمالى: 100 ريال',
                    textAlign: TextAlign.right,
                    style: Styles.textStyle16.copyWith(color: Colors.white),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Text(
                    'البنود : 4',
                    textAlign: TextAlign.right,
                    style: Styles.textStyle16.copyWith(color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
