import 'package:flutter/material.dart';
import 'package:janatar_barta/common/widgets/text_form_fields.dart';
import 'package:janatar_barta/utils/constants/size.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// -- Full Name
          const Text(
            'Full Name',
            textAlign: TextAlign.left,
          ),
          const SizedBox(
            height: 5.0,
          ),
          TextForm(hintText: 'user name', obscureText: false),
          const SizedBox(
            height: TSize.md,
          ),
          
          /// -- Email Text
          const Text(
            'Email',
            textAlign: TextAlign.left,
          ),
          const SizedBox(
            height: 5.0,
          ),

          /// -- Email TextField
          TextForm(
            hintText: 'user@email.com',
            obscureText: false,
          ),
          const SizedBox(
            height: TSize.md,
          ),

          /// -- Password TextField
          const Text(
            'Password',
            textAlign: TextAlign.left,
          ),
          const SizedBox(
            height: 5.0,
          ),

          /// -- Password TextField
          TextForm(
            obscureText: true,
            hintText: '*****',
            suffixIcon: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.visibility_off),
            ),
          ),
        ],
      ),
    );
  }
}
