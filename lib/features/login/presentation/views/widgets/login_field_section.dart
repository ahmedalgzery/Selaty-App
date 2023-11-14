import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:selaty/core/widgets/Custom_text_form_field.dart';

class LoginFieldSection extends StatelessWidget {
  const LoginFieldSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       
        CustomTextField(
          controller: TextEditingController(),
          hintText: 'البريد الالكترومى',
          prefixIcon: const Icon(FontAwesomeIcons.circleCheck),
        ),
        CustomTextField(
          controller: TextEditingController(),
          hintText: 'كلمة المرور',
          prefixIcon: const Icon(FontAwesomeIcons.eyeSlash),
          isScure: true,
        ),
      ],
    );
  }
}