import 'package:flutter/material.dart';
import 'package:selaty/constant.dart';
import 'package:selaty/features/password_success/presentation/views/widgets/password_success_view.dart';

class PasswordSuccessView extends StatelessWidget {
  const PasswordSuccessView({super.key});
  static const String kPasswordSuccessView = '/passwordSuccessView';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kPrimaryColor,
      body: PasswordSuccessViewBody(),
    );
  }
}
