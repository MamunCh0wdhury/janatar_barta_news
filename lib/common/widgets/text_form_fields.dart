import 'package:flutter/material.dart';
import 'package:janatar_barta/utils/helpers/helper_function.dart';

// ignore: must_be_immutable
class TextForm extends StatelessWidget {
  TextForm(
      {super.key,
      required this.hintText,
      this.suffixIcon,
      required this.obscureText});

  final String hintText;
  Widget? suffixIcon;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return TextFormField(
      obscureText: obscureText,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.grey),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: dark ? Colors.white : Colors.grey),
          borderRadius: BorderRadius.circular(8.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(color: dark ? Colors.white : Colors.grey),
        ),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: const BorderSide(color: Colors.red)),
      ),
    );
  }
}
