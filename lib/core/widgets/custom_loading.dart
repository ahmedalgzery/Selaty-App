import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class CustomLoading extends StatelessWidget {
  const CustomLoading({super.key, required this.size});
  final double size;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: LoadingAnimationWidget.discreteCircle(
          color: const Color(0xFF4A9051),
          secondRingColor: const Color(0xFF4A9051).withOpacity(.6),
          thirdRingColor: const Color(0xFF4A9051).withOpacity(.3),
          size: size.r),
    );
  }
}
