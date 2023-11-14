import 'package:flutter/material.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:go_router/go_router.dart';
import 'package:selaty/features/password/presentation/views/password_view.dart';

class VerifcationCodeField extends StatelessWidget {
  const VerifcationCodeField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: VerificationCode(
        fillColor: const Color(0xFFEF3F4C),
        fullBorder: true,
        itemSize: 80,
        textStyle: const TextStyle(fontSize: 20.0, color: Colors.white),
        keyboardType: TextInputType.number,

        length: 4,
        cursorColor:
            Colors.white, // If this is null it will default to the ambient

        onCompleted: (String value) {
          GoRouter.of(context).push(PasswordView.kPasswordView);
        },
        onEditing: (bool value) {},
      ),
    );
  }
}
