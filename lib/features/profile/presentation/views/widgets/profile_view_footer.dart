import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:selaty/constant.dart';
import 'package:selaty/features/profile/presentation/views/widgets/profile_footer_button.dart';

class ProfileViewFooter extends StatelessWidget {
  const ProfileViewFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        ProfileFooterButton(
          color: Color(0xFFEE505E),
          icon: FontAwesomeIcons.headset,
          text: 'مركز الدعم',
        ),
        ProfileFooterButton(
          color: kPrimaryColor,
          icon: FontAwesomeIcons.arrowRightFromBracket,
          text: 'خروج',
        ),
      ],
    );
  }
}
