import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:selaty/constant.dart';
import 'package:selaty/core/utils/assets.dart';
import 'package:selaty/core/utils/styles.dart';
import 'package:selaty/core/widgets/custom_button.dart';
import 'package:selaty/features/oreder/presentation/views/order_view.dart';

class SuccessOrderViewBody extends StatelessWidget {
  const SuccessOrderViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.r),
          color: kPrimaryColor.withOpacity(.91)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            AssetesData.accept,
            width: size.width / 1.5,
            fit: BoxFit.fill,
          ),
          Text(
            'طلبك ناجح !',
            style: Styles.textStyle24.copyWith(color: Colors.white),
          ),
          Text(
            'شكرا على طلبك ستحصل على\n رد فى غضون بضع دقائق',
            style: Styles.textStyle18.copyWith(color: Colors.white),
            textAlign: TextAlign.right,
          ),
          CustomButton(
              text: 'ترتيب المسار',
              color: Colors.black87,
              onPressed: () {
                GoRouter.of(context).push(OrderView.kOrderView);
              }),
        ],
      ),
    );
  }
}
