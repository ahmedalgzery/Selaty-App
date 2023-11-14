
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductViewMainIcon extends StatelessWidget {
  const ProductViewMainIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 115.h),
      child: CircleAvatar(
        radius: 40.r,
        backgroundColor: Colors.white.withOpacity(.5),
        child: CircleAvatar(
          radius: 33.r,
          backgroundColor: Colors.white,
          child: Icon(
            FontAwesomeIcons.apple,
            size: 30.w,
          ),
        ),
      ),
    );
  }
}
