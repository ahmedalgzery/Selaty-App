import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/core/utils/styles.dart';
import 'package:selaty/features/home/presentation/views/widgets/offers_button.dart';

class HomeViewOffers extends StatelessWidget {
  const HomeViewOffers({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
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
                  'تسوق حسب العروض',
                  style: Styles.textStyle24,
                  textAlign: TextAlign.right,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Row(
            children: [
              OffersButton(
                color: Colors.red,
                child: Column(
                  children: [
                    Text(
                      'صفة',
                      style: Styles.textStyle20.copyWith(color: Colors.white),
                    ),
                    Text(
                      '50 %',
                      style: Styles.textStyle28.copyWith(color: Colors.white),
                    ),
                    Text(
                      'خصم',
                      style: Styles.textStyle16.copyWith(color: Colors.white),
                    ),
                  ],
                ),
              ),
              OffersButton(
                color: Colors.red,
                child: Column(
                  children: [
                    Text(
                      'صفة',
                      style: Styles.textStyle20.copyWith(color: Colors.white),
                    ),
                    Text(
                      '40 %',
                      style: Styles.textStyle28.copyWith(color: Colors.white),
                    ),
                    Text(
                      'خصم',
                      style: Styles.textStyle16.copyWith(color: Colors.white),
                    ),
                  ],
                ),
              ),
              OffersButton(
                color: Colors.red,
                child: Column(
                  children: [
                    Text(
                      'صفة',
                      style: Styles.textStyle20.copyWith(color: Colors.white),
                    ),
                    Text(
                      '30 %',
                      style: Styles.textStyle28.copyWith(color: Colors.white),
                    ),
                    Text(
                      'خصم',
                      style: Styles.textStyle16.copyWith(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              OffersButton(
                color: Colors.red,
                child: Text(
                  'اخيارات\nالشهر',
                  style: Styles.textStyle24.copyWith(color: Colors.white),
                  textAlign: TextAlign.right,
                ),
              ),
              OffersButton(
                color: Colors.red,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'أقل ',
                      style: Styles.textStyle20.copyWith(color: Colors.white),
                    ),
                    Text(
                      '99\nSAR',
                      style: Styles.textStyle24.copyWith(color: Colors.white),
                    ),
                  ],
                ),
              ),
              OffersButton(
                color: Colors.red,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'اشترى1',
                      style: Styles.textStyle16.copyWith(color: Colors.white),
                    ),
                    Text(
                      'واحصل على 1',
                      style: Styles.textStyle14.copyWith(color: Colors.white),
                      textAlign: TextAlign.right,
                    ),
                    Text(
                      'مجانا',
                      style: Styles.textStyle28.copyWith(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
