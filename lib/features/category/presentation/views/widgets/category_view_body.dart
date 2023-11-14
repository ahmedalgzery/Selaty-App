import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:selaty/core/utils/assets.dart';
import 'package:selaty/features/category/presentation/views/widgets/category_item.dart';
import 'package:selaty/features/product/presentation/views/product_view.dart';

class CategoryViewBody extends StatelessWidget {
  const CategoryViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const BouncingScrollPhysics(),
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemCount: 10,
      itemBuilder: (context, index) {
        return CategoryItem(
          color: Colors.red,
          icon: FontAwesomeIcons.appleWhole,
          name: 'الفواكه',
          image: AssetesData.fruit,
          onTap: () {
            GoRouter.of(context).push(ProductView.kProductView);
          },
        );
      },
    );
  }
}
