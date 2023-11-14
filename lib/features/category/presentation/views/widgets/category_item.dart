import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/core/utils/styles.dart';
import 'package:selaty/features/category/presentation/views/widgets/category_icon.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.color,
    required this.icon,
    required this.image,
    required this.name,
    required this.onTap,
  });
  final Color color;
  final IconData icon;
  final String image, name;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 200.w,
        height: 220.h,
        margin: EdgeInsets.symmetric(vertical: 10.h, horizontal: 16.w),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey[350]!,
                  blurRadius: 8,
                  offset: const Offset(1, 1)),
            ]),
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Text(
                    name,
                    style: Styles.textStyle20,
                    textAlign: TextAlign.right,
                  ),
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(16),
                        bottomRight: Radius.circular(16),
                      ),
                      image: DecorationImage(
                          image: AssetImage(
                            image,
                          ),
                          fit: BoxFit.fitWidth),
                    ),
                  ),
                )
              ],
            ),
            CategoryIcon(color: color, icon: icon),
          ],
        ),
      ),
    );
  }
}
