
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:selaty/constant.dart';
import 'package:selaty/core/utils/styles.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0.w),
      margin: EdgeInsets.all(8.0.w),
      height: 30.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
          border: Border.all(color: Colors.white)),
      child: Row(
        children: [
          CircleAvatar(
            radius: 10.r,
            backgroundColor: kSecondColor,
            child: Icon(
              Icons.close,
              size: 10.r,
              color: Colors.black,
            ),
          ),
          Expanded(
              child: TextField(
            textAlign: TextAlign.right,
            textAlignVertical: TextAlignVertical.center,
            style: Styles.textStyle18,
            decoration: InputDecoration(
              enabledBorder: InputBorder.none,
              hintText: 'البحث عن المنتجات',
              hintStyle: Styles.textStyle14.copyWith(color: Colors.grey),
            ),
          )),
          CircleAvatar(
            radius: 13.r,
            backgroundColor: kSecondColor,
            child: Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 15.r,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}

