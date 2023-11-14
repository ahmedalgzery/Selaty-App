import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/features/home/presentation/views/widgets/Home_view_best_value.dart';
import 'package:selaty/features/home/presentation/views/widgets/home_view_search.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(children: [
        const HomeViewSearch(),
        SizedBox(
          height: 15.h,
        ),
        const BestValue(),
      ]),
    );
  }
}
