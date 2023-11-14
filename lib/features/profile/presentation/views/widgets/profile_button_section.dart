import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:selaty/features/profile/presentation/views/widgets/profile_view_button.dart';

class ProfileButtonSection extends StatelessWidget {
  const ProfileButtonSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Column(
          children: [
            Row(
              children: [
                ProfileViewButton(
                  icon: Icons.person,
                  text: 'عني',
                ),
                ProfileViewButton(
                  icon: FontAwesomeIcons.shopify,
                  text: 'طلباتى',
                ),
                ProfileViewButton(
                  icon: FontAwesomeIcons.creditCard,
                  text: 'مدفوعاتى',
                ),
              ],
            )
          ],
        ),
        Column(
          children: [
            Row(
              children: [
                ProfileViewButton(
                  icon: Icons.favorite,
                  text: 'المفضل لدى',
                ),
                ProfileViewButton(
                  icon: FontAwesomeIcons.rotate,
                  text: 'المعاملات',
                ),
                ProfileViewButton(
                  icon: FontAwesomeIcons.percent,
                  text: 'رمز ترويجى',
                ),
              ],
            )
          ],
        ),
        Column(
          children: [
            Row(
              children: [
                ProfileViewButton(
                  icon: FontAwesomeIcons.locationDot,
                  text: 'عنوانى',
                ),
                ProfileViewButton(
                  icon: Icons.notifications,
                  text: 'تنبية',
                ),
                ProfileViewButton(
                  icon: Icons.settings,
                  text: 'اعدادات',
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
