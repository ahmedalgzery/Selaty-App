import 'package:flutter/material.dart';
import 'package:selaty/features/oreder/presentation/views/widgets/order_item.dart';
import 'package:selaty/features/oreder/presentation/views/widgets/order_steps.dart';

class OrderViewBody extends StatelessWidget {
  const OrderViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        OrderItem(),
        OrderStepes(),
      ],
    );
  }
}
