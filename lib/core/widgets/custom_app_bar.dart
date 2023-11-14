import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:selaty/core/utils/styles.dart';
import 'package:selaty/core/widgets/custom_app_bar_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    this.borderIconColor = Colors.black,
    this.titleColor = Colors.black,
  });
  final String title;
  final Color borderIconColor, titleColor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(14.0.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomAppBarIcon(
            icon: Icons.arrow_back_ios,
            onTap: () {
              GoRouter.of(context).pop();
            },
            borederColor: borderIconColor,
          ),
          Expanded(
              child: Center(
            child: Text(
              title,
              style: Styles.textStyle20.copyWith(color: titleColor),
              textAlign: TextAlign.right,
            ),
          )),
          SizedBox(
            width: 15.w,
          ),
          CustomAppBarIcon(
            icon: Icons.inbox,
            onTap: () {},
            borederColor: borderIconColor,
          ),
        ],
      ),
    );
  }
}
