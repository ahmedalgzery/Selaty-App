import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/core/utils/assets.dart';

class ProfileViewImage extends StatelessWidget {
  const ProfileViewImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 80.h),
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          CircleAvatar(
            radius: 80.r,
            backgroundColor: Colors.white.withOpacity(.5),
            child: CircleAvatar(
              radius: 70.r,
              backgroundImage: const AssetImage(
                AssetesData.ahmed,
              ),
            ),
          ),
          CircleAvatar(
            radius: 25.r,
            backgroundColor: const Color(0xFFE64956),
            child: Icon(
              Icons.camera_alt,
              color: Colors.white,
              size: 30.r,
            ),
          ),
        ],
      ),
    );
  }
}
