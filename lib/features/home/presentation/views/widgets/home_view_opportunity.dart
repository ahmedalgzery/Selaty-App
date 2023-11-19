import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/core/utils/assets.dart';
import 'package:selaty/core/utils/styles.dart';
import 'package:selaty/features/home/presentation/views/widgets/opportunity_item.dart';

class HomeViewOpportunity extends StatelessWidget {
  const HomeViewOpportunity({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 300,
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
                Padding(
                  padding: EdgeInsets.only(right: 20.w),
                  child: Text(
                    'انتهز الفرصة',
                    style: Styles.textStyle24,
                    textAlign: TextAlign.right,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: ((context, index) => const OpportunityItem(
                    name: 'مانجو',
                    offer: 'خصم 25% بدون فوائد',
                    image: AssetesData.mango,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
