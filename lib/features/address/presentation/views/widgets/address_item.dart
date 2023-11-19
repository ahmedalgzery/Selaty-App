import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:selaty/constant.dart';
import 'package:selaty/core/utils/styles.dart';

class AdreesItem extends StatefulWidget {
  const AdreesItem(
      {super.key,
      required this.address,
      required this.desAddress,
      required this.phone,
      required this.value});
  final String address, desAddress, phone;
  final int value;
  @override
  State<AdreesItem> createState() => _AdreesItemState();
}

class _AdreesItemState extends State<AdreesItem> {
  int selectedOption = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.h,
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 15.h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.r), color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          widget.value == 1
              ? Container(
                  color: kPrimaryColor.withOpacity(.5),
                  child: Text(
                    'افتراضى',
                    style: Styles.textStyle14.copyWith(color: Colors.white),
                    textAlign: TextAlign.right,
                  ),
                )
              : const SizedBox(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(FontAwesomeIcons.ellipsis),
              ),
              Row(
                children: [
                  Text(
                    widget.address,
                    style: Styles.textStyle24,
                  ),
                  Radio(
                      value: widget.value,
                      groupValue: selectedOption,
                      onChanged: (value) {
                        
                        setState(() {
                          selectedOption = value as int;
                        });
                      }),
                ],
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: Text(
                widget.desAddress,
                maxLines: 2,
                style: Styles.textStyle20,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.right,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: Text(
                'الهاتف : ${widget.phone}',
                style: Styles.textStyle16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
