import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:selaty/core/utils/assets.dart';
import 'package:selaty/core/utils/styles.dart';
import 'package:selaty/core/widgets/custom_app_bar_icon.dart';

class HomeViewAppBar extends StatelessWidget {
  const HomeViewAppBar({
    super.key,
    required this.title,
    this.borderIconColor = Colors.black,
    this.titleColor = Colors.black,
    required this.address,
  });
  final String title, address;
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  title,
                  style: Styles.textStyle18.copyWith(color: titleColor),
                  textAlign: TextAlign.right,
                ),
                Text(
                  address,
                  style: Styles.textStyle14.copyWith(color: Colors.grey),
                  textAlign: TextAlign.right,
                ),
              ],
            ),
          ),
          SizedBox(
            width: 15.w,
          ),
          CircleAvatar(
            radius: 20.r,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 18.r,
              backgroundImage: const AssetImage(AssetesData.ahmed),
            ),
          )
        ],
      ),
    );
  }
}
