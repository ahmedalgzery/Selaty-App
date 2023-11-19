import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/constant.dart';
import 'package:selaty/core/widgets/custom_app_bar.dart';
import 'package:selaty/features/address/presentation/views/widgets/address_view_body.dart';

class AddressView extends StatelessWidget {
  const AddressView({super.key});
  static const String kAddressView = '/addressview';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondColor,
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 50.h),
        child: const CustomAppBar(title: 'عنوان التسليم'),
      ),
      body: AddressViewBody(),
    );
  }
}
