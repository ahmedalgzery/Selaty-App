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
                color: const Color(0xFFFF5556),
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
                color: const Color(0xFF34A1FE),
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
                color: const Color(0xFFC35DD7),
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
                color: const Color(0xFF26B3AE),
                child: Text(
                  'اخيارات\nالشهر',
                  style: Styles.textStyle24.copyWith(color: Colors.white),
                  textAlign: TextAlign.right,
                ),
              ),
              OffersButton(
                color: const Color(0xFF849C3D),
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
                color: const Color(0xFFE69B21),
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
