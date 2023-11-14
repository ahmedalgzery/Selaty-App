import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:selaty/core/utils/styles.dart';

class FooterProductGridViewItem extends StatelessWidget {
  const FooterProductGridViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25.h,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 5.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(15.r),
          bottomRight: Radius.circular(15.r),
        ),
        color: Colors.grey,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            backgroundColor: Colors.red,
            radius: 12.r,
            child: Icon(
              FontAwesomeIcons.boxArchive,
              size: 16.w,
            ),
          ),
          Text(
            '510 \$',
            style: Styles.textStyle18,
          ),
        ],
      ),
    );
  }
}
