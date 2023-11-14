import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:selaty/core/widgets/custom_text_form_field.dart';

class RegisterFieldSection extends StatelessWidget {
  const RegisterFieldSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(
          controller: TextEditingController(),
          hintText: 'الاسم',
          prefixIcon: const SizedBox(),
        ),
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
