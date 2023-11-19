import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/core/utils/styles.dart';
import 'package:selaty/core/widgets/custom_button.dart';
import 'package:selaty/features/address/presentation/views/widgets/address_item.dart';

class AddressViewBody extends StatelessWidget {
  const AddressViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(
        horizontal: 20.w,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            'يشحن الى',
            style: Styles.textStyle16,
            textAlign: TextAlign.right,
          ),
          const AdreesItem(
            address: 'الشركة',
            desAddress: 'شارع سيف 2 , شيبن الكوم , المنوفية  ',
            phone: '01013784288',
            value: 1,
          ),
          const AdreesItem(
            address: 'الشركة',
            desAddress: 'شارع سيف 2 , شيبن الكوم , المنوفية  ',
            phone: '01013784288',
            value: 2,
          ),
          const Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
            child: CustomButton(text: 'التسليم لهذا العنوان', onPressed: () {}),
          ),
        ],
      ),
    );
  }
}
