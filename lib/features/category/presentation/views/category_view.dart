import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/core/widgets/custom_app_bar.dart';
import 'package:selaty/features/category/presentation/views/widgets/category_view_body.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key});
  static const String kCategoryView = '/categoryView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE5E5E5),
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 60.h),
        child: const CustomAppBar(title: 'التصنيفات'),
      ),
      body: const CategoryViewBody(),
    );
  }
}
