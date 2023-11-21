import 'package:flutter/material.dart';
import 'package:selaty/features/cart/presentation/views/widgets/full_cart_list_view_item.dart';

class FullCartIistView extends StatelessWidget {
  const FullCartIistView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) => const FullCartListViewItem(),
        itemCount: 3,
      ),
    );
  }
}
