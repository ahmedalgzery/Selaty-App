// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.prefixIcon,
    this.isScure = false,
  });
  final TextEditingController controller;
  final String hintText;
  final Widget prefixIcon;
  final bool isScure;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        style: const TextStyle(color: Colors.black),
        controller: controller,
        textAlign: TextAlign.right,
        obscureText: isScure,
        obscuringCharacter: '*',
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.grey),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: Colors.grey.withOpacity(.3),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: Colors.grey.withOpacity(.3),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey.withOpacity(.3),
            ),
          ),
          prefixIcon: prefixIcon,
          prefixIconColor: Colors.grey,
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'من فضلك أدخل  $hintText';
          }
          return null;
        },
      ),
    );
  }
}
