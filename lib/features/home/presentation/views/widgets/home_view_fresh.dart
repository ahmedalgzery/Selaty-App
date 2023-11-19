import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/core/utils/assets.dart';
import 'package:selaty/core/utils/styles.dart';
import 'package:selaty/features/home/presentation/views/widgets/best_seller_item.dart';

class HomeViewFresh extends StatelessWidget {
  const HomeViewFresh({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 660.h,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 20.w),
            child: Text(
              'طازج وسريع',
              style: Styles.textStyle24,
              textAlign: TextAlign.right,
            ),
          ),
          Expanded(
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: ((context, index) =>
                  SizedBox(width: 170.w, child: const BestSellerItem())),
            ),
          ),
          Expanded(
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: ((context, index) =>
                  SizedBox(width: 170.w, child: const BestSellerItem())),
            ),
          ),
          Container(
            width: double.infinity,
            height: 180.h,
            margin: EdgeInsets.symmetric(horizontal: 15.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.r),
              image: const DecorationImage(
                  image: AssetImage(AssetesData.fruit), fit: BoxFit.fitWidth),
            ),
          ),
        ],
      ),
    );
  }
}
