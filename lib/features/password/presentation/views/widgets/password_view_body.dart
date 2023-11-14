import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:selaty/core/utils/styles.dart';
import 'package:selaty/core/widgets/custom_button.dart';
import 'package:selaty/core/widgets/custom_text_form_field.dart';
import 'package:selaty/features/password_success/presentation/views/password_success_view.dart';

class PasswordViewBody extends StatelessWidget {
  const PasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.w,
        vertical: 15.h,
      ),
      width: double.infinity,
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(children: [
          Text(
            'أدخل كلمة المرور الجديدة',
            style: Styles.textStyle16.copyWith(
              color: Colors.grey,
            ),
            textAlign: TextAlign.right,
          ),
          SizedBox(
            height: 50.h,
          ),
          CustomTextField(
            controller: TextEditingController(),
            hintText: 'كلمة المرور الحالي',
            prefixIcon: const Icon(FontAwesomeIcons.eyeSlash),
            isScure: true,
          ),
          CustomTextField(
            controller: TextEditingController(),
            hintText: 'كلمة المرور الجديدة',
            prefixIcon: const Icon(FontAwesomeIcons.eyeSlash),
            isScure: true,
          ),
          SizedBox(
            height: 20.h,
          ),
          CustomButton(
              text: 'تغير',
              onPressed: () {
                GoRouter.of(context)
                    .push(PasswordSuccessView.kPasswordSuccessView);
              })
        ]),
      ),
    );
  }
}
