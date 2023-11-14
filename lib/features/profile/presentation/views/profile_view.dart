import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/constant.dart';
import 'package:selaty/features/profile/presentation/views/widgets/profile_view_app_bar.dart';
import 'package:selaty/features/profile/presentation/views/widgets/profile_view_body.dart';
import 'package:selaty/features/profile/presentation/views/widgets/profile_view_image.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});
  static const String kProfileView = '/profileView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondColor,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Column(
              children: [
                const ProfileViewAppBar(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.w),
                  child: const ProfileViewBody(),
                ),
              ],
            ),
            const ProfileViewImage(),
          ],
        ),
      ),
    );
  }
}
