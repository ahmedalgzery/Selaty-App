
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/constant.dart';
import 'package:selaty/core/utils/styles.dart';

class FullCartListViewItem extends StatefulWidget {
  const FullCartListViewItem({
    super.key,
  });
  @override
  State<FullCartListViewItem> createState() => _FullCartListViewItemState();
}

class _FullCartListViewItemState extends State<FullCartListViewItem> {
  int amount = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 110.h,
      margin: EdgeInsets.symmetric(horizontal: 8.w, vertical: 10.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        color: Colors.white,
      ),
      child: Row(
        children: [
          const Spacer(
            flex: 2,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$amount x 35.00 \$',
                style: Styles.textStyle16.copyWith(color: kPrimaryColor),
              ),
              Text(
                'فراولة مصرى',
                style: Styles.textStyle20,
              ),
              Text(
                '1 Kg',
                style: Styles.textStyle14.copyWith(color: Colors.grey),
              ),
            ],
          ),
          const Spacer(
            flex: 1,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    amount++;
                  });
                },
                icon: const Icon(Icons.add),
              ),
              Text(
                amount.toString(),
                style: Styles.textStyle18,
              ),
              IconButton(
                onPressed: () {
                  if (amount > 1) {
                    setState(() {
                      amount--;
                    });
                  }
                },
                icon: const Icon(Icons.remove),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
