import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryIcon extends StatelessWidget {
  const CategoryIcon({
    super.key,
    required this.color,
    required this.icon,
  });
  final Color color;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        CircleAvatar(
          radius: 40.r,
          backgroundColor: Colors.white,
        ),
        CircleAvatar(
          radius: 35.r,
          backgroundColor: color,
          child: Icon(
            icon,
            color: Colors.white,
            size: 40.w,
          ),
        ),
      ],
    );
  }
}
