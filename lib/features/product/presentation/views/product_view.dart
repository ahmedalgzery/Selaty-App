import 'package:flutter/material.dart';
import 'package:selaty/constant.dart';
import 'package:selaty/features/product/presentation/views/widgets/product_view_app_bar.dart';
import 'package:selaty/features/product/presentation/views/widgets/product_view_body.dart';
import 'package:selaty/features/product/presentation/views/widgets/product_view_main_icon.dart';

class ProductView extends StatelessWidget {
  const ProductView({super.key});
  static const String kProductView = '/productView';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kSecondColor,
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Column(
            children: [
              ProductViewAppBar(),
              ProductViewBody(),
            ],
          ),
          ProductViewMainIcon(),
        ],
      ),
    );
  }
}
