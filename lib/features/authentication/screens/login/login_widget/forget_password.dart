import 'package:flutter/material.dart';
class ForgetPassword extends StatelessWidget {
  const ForgetPassword({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextButton(
          onPressed: () {},
          child: const Text(
            'Forget Password?',
            style: TextStyle(
                decoration: TextDecoration.underline,
                fontSize: 15),
          ),),
      ],
    );
  }
}