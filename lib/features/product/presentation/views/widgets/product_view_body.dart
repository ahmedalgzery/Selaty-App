import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/features/product/presentation/views/widgets/product_grid_view.dart';
import 'package:selaty/features/product/presentation/views/widgets/search_section.dart';

class ProductViewBody extends StatelessWidget {
  const ProductViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            SizedBox(
              height: 35.h,
            ),
            const SearchSection(),
            SizedBox(
              height: 20.h,
            ),
            const Expanded(
              child: ProductGridView(),
            ),
          ],
        ),
      ),
    );
  }
}
