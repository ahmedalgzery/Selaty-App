
import 'package:flutter/material.dart';
import 'package:selaty/core/utils/styles.dart';

class Footer extends StatelessWidget {
  const Footer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
          onPressed: () {},
          child: Text(
            'تسجيل الدخول',
            style: Styles.textStyle20,
          ),
        ),
        Text(
          ' لدى حساب بالفعل؟',
          style: Styles.textStyle18,
        ),
      ],
    );
  }
}
