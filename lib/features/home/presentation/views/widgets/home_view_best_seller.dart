import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/core/utils/styles.dart';
import 'package:selaty/features/home/presentation/views/widgets/best_seller_item.dart';

class HomeViewBestSeller extends StatelessWidget {
  const HomeViewBestSeller({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 600.h,
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
                Text(
                  'الأكثر مبيعا',
                  style: Styles.textStyle24,
                  textAlign: TextAlign.right,
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                const Row(
                  children: [BestSellerItem(), BestSellerItem()],
                ),
                SizedBox(
                  height: 15.h,
                ),
                const Row(
                  children: [BestSellerItem(), BestSellerItem()],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
