import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/constant.dart';
import 'package:selaty/core/utils/assets.dart';
import 'package:selaty/core/utils/styles.dart';
import 'package:selaty/features/product/presentation/views/widgets/footer_product_grid_view_item.dart';
import 'package:selaty/features/product/presentation/views/widgets/product_item_app_bar.dart';

class ProductGridViewItem extends StatelessWidget {
  const ProductGridViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.w,
      height: 400.h,
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const ProductItemAppBar(),
          SizedBox(
              width: double.infinity,
              height: 80.h,
              child: Image.asset(AssetesData.mango)),
          Container(
            width: 100.w,
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: kPrimaryColor,
            ),
            child: Text(
              'فاكهة',
              style: Styles.textStyle14.copyWith(color: Colors.white),
              textAlign: TextAlign.right,
            ),
          ),
          Text(
            'مانجو',
            style: Styles.textStyle16,
            textAlign: TextAlign.right,
          ),
          Text(
            '1200',
            style: Styles.textStyle16,
            textAlign: TextAlign.right,
          ),
          const FooterProductGridViewItem(),
        ],
      ),
    );
  }
}
