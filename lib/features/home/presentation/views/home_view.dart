import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/constant.dart';
import 'package:selaty/features/home/presentation/views/widgets/home_view_app_bar.dart';
import 'package:selaty/features/home/presentation/views/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const String kHomeView = '/homeView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondColor,
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 90.h),
        child: const HomeViewAppBar(
          title: 'احمد الجزيرى',
          address: 'المنوفية  شبين الكوم',
        ),
      ),
      body:const HomeViewBody()
    );
  }
}
