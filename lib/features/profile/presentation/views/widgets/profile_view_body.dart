import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/features/profile/presentation/views/widgets/profile_button_section.dart';
import 'package:selaty/features/profile/presentation/views/widgets/profile_view_footer.dart';
import 'package:selaty/features/profile/presentation/views/widgets/profile_view_info.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ProfileViewInfo(),
        SizedBox(height: 20.h),
        const ProfileButtonSection(),
        SizedBox(height: 20.h),
        const ProfileViewFooter()
      ],
    );
  }
}
