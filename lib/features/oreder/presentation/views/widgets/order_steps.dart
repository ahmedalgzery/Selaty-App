import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:selaty/constant.dart';
import 'package:selaty/core/utils/styles.dart';

class OrderStepes extends StatelessWidget {
  const OrderStepes({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(
            vertical: 15.h,
            horizontal: 10.w,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.r),
            color: Colors.white,
          ),
          child: Stepper(
              physics: const BouncingScrollPhysics(),
              connectorColor: const MaterialStatePropertyAll(kPrimaryColor),
              stepIconBuilder: (stepIndex, stepState) {
                return CircleAvatar(
                  radius: 45.r,
                  backgroundColor: Colors.white.withOpacity(.7),
                  child: Icon(
                    FontAwesomeIcons.bagShopping,
                    size: 25.r,
                    color: kPrimaryColor,
                  ),
                );
              },
              controlsBuilder: (context, details) {
                return const SizedBox(
                  width: double.infinity,
                );
              },
              currentStep: 2,
              steps: [
                Step(
                    title: Text(
                      'تم الطلب',
                      textAlign: TextAlign.right,
                      style: Styles.textStyle20.copyWith(color: kPrimaryColor),
                    ),
                    subtitle: Text(
                      'Jan 26, 2021',
                      style: Styles.textStyle14.copyWith(color: Colors.grey),
                    ),
                    label: const Icon(Icons.access_alarm),
                    content: const SizedBox()),
                Step(
                    title: Text(
                      'تم الطلب',
                      textAlign: TextAlign.right,
                      style: Styles.textStyle20.copyWith(color: kPrimaryColor),
                    ),
                    subtitle: Text(
                      'Jan 26, 2021',
                      style: Styles.textStyle14.copyWith(color: Colors.grey),
                    ),
                    label: const Icon(Icons.access_alarm),
                    content: const SizedBox()),
                Step(
                    title: Text(
                      'تم الطلب',
                      textAlign: TextAlign.right,
                      style: Styles.textStyle20.copyWith(color: kPrimaryColor),
                    ),
                    subtitle: Text(
                      'Jan 26, 2021',
                      style: Styles.textStyle14.copyWith(color: Colors.grey),
                    ),
                    label: const Icon(Icons.access_alarm),
                    content: const SizedBox()),
                Step(
                    title: Text(
                      'تم الطلب',
                      textAlign: TextAlign.right,
                      style: Styles.textStyle20.copyWith(color: Colors.grey),
                    ),
                    subtitle: Text(
                      'قيد الانتظار',
                      style: Styles.textStyle14.copyWith(color: Colors.grey),
                    ),
                    label: const Icon(Icons.access_alarm),
                    content: const SizedBox()),
                Step(
                    isActive: false,
                    title: Text(
                      'تم الطلب',
                      textAlign: TextAlign.right,
                      style: Styles.textStyle20.copyWith(color: Colors.grey),
                    ),
                    subtitle: Text(
                      'قيد الانتظار',
                      style: Styles.textStyle14.copyWith(color: Colors.grey),
                    ),
                    label: const Icon(Icons.access_alarm),
                    content: const SizedBox()),
              ]),
        ),
      ),
    );
  }
}
