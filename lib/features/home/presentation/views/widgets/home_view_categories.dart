import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:selaty/core/utils/assets.dart';
import 'package:selaty/core/utils/styles.dart';
import 'package:selaty/features/category/presentation/views/widgets/category_item.dart';

import '../../../../product/presentation/views/product_view.dart';

class HomeViewCategories extends StatelessWidget {
  const HomeViewCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 20.w),
            child: Text(
              'التصنيفات',
              style: Styles.textStyle24,
              textAlign: TextAlign.right,
            ),
          ),
          Expanded(
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: ((context, index) => SizedBox(
                    width: 170.w,
                    child: CategoryItem(
                      color: Colors.red,
                      icon: FontAwesomeIcons.appleWhole,
                      name: 'الفواكه',
                      image: AssetesData.fruit,
                      onTap: () {
                        GoRouter.of(context).push(ProductView.kProductView);
                      },
                    ),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
