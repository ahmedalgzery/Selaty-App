
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:selaty/features/register/presentation/views/widgets/sochial_button.dart';

class SochialButtonSection extends StatelessWidget {
  const SochialButtonSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SochialButton(
          text: 'Google',
          color: Colors.red,
          icon: FontAwesomeIcons.googlePlus,
        ),
        SizedBox(width: 20.w),
        const SochialButton(
          text: 'Facebook',
          color: Colors.blue,
          icon: FontAwesomeIcons.facebook,
        ),
      ],
    );
  }
}
