import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:selaty/core/utils/styles.dart';
import 'package:selaty/core/widgets/custom_button.dart';
import 'package:selaty/features/address/presentation/views/address_view.dart';

class EmptyCartView extends StatelessWidget {
  const EmptyCartView({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 20.w).copyWith(bottom: 40.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),
          Icon(
            Icons.shopping_bag_outlined,
            color: const Color(0xFFED505E),
            fill: 0,
            size: 200.r,
          ),
          Text(
            'عربة التسوق فارغة !',
            style: Styles.textStyle28,
            textAlign: TextAlign.right,
          ),
          Text('اجعل سلتك سعيدة واضف منتجات',
              style: Styles.textStyle20, textAlign: TextAlign.right),
          const Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
            child: CustomButton(
                text: 'ابدأ التسوق',
                onPressed: () {
                  GoRouter.of(context).push(AddressView.kAddressView);
                }),
          ),
        ],
      ),
    );
  }
}
