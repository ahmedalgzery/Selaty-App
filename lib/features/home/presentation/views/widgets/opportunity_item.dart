import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:selaty/core/utils/styles.dart';

class OpportunityItem extends StatelessWidget {
  const OpportunityItem(
      {super.key,
      required this.name,
      required this.offer,
      required this.image});
  final String name, offer, image;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        Column(
          children: [
            Container(
              width: 170.w,
              margin: EdgeInsets.symmetric(horizontal: 15.w),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.r),
                  color: Colors.white),
              child:
                  Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    name,
                    style: Styles.textStyle14.copyWith(color: Colors.grey),
                  ),
                ),
                Text(
                  offer,
                  style: Styles.textStyle18,
                ),
                Image.asset(
                  image,
                  fit: BoxFit.fitWidth,
                )
              ]),
            ),
            Container(
              width: 170.w,
              height: 40.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16.r),
                    bottomRight: Radius.circular(16.r),
                  ),
                  color: Colors.white.withOpacity(.3)),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 35.h, right: 25.w),
          child: CircleAvatar(
            radius: 15.r,
            backgroundColor: const Color(0xFFE22D34),
            child: const Icon(
              FontAwesomeIcons.chevronRight,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
