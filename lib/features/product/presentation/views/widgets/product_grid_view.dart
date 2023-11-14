import 'package:flutter/material.dart';
import 'package:selaty/features/product/presentation/views/widgets/product_grid_view_item.dart';

class ProductGridView extends StatelessWidget {
  const ProductGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const BouncingScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: .66),
      itemCount: 10,
      itemBuilder: (context, index) => const ProductGridViewItem(),
    );
  }
}
