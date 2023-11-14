// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/core/utils/assets.dart';
import 'package:selaty/core/utils/styles.dart';

class BestValue extends StatelessWidget {
  const BestValue({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 200,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      'مشاهدة الكل ',
                      style: Styles.textStyle14,
                    ),
                    const Icon(Icons.arrow_right)
                  ],
                ),
                Row(
                  children: [
                    Text('اعلى التقيمات',
                        style:
                            Styles.textStyle14.copyWith(color: Colors.black45)),
                    Text(
                      ' القيمة الأفضل',
                      style: Styles.textStyle18,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: ((context, index) => Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                    width: 300.w,
                    height: 200.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r),
                      image: const DecorationImage(
                        fit: BoxFit.fitWidth,
                        image: AssetImage(AssetesData.fruit),
                      ),
                    ),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}