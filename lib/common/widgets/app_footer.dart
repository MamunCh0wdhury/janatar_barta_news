import 'package:flutter/material.dart';
import 'package:janatar_barta/utils/constants/colors.dart';

// ignore: must_be_immutable
class AppFooter extends StatelessWidget {
  String titlePath;
  String subTitlePath;
  final Function()? onTap;

  AppFooter({
    required this.titlePath,
    required this.subTitlePath,
    super.key,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          titlePath,
          style: const TextStyle(
            fontSize: 15,
              fontFamily: 'Poppins-Regular',
             ),
        ),

        TextButton(
          onPressed: onTap,
          child: Text(
            subTitlePath,
            style: const TextStyle(
                decoration: TextDecoration.underline,
                fontSize: 15,
                color: TColors.textGreen,
                fontWeight: FontWeight.w500,
                fontFamily: 'Poppins-Regular'),
          ),
        ),
      ],
    );
  }
}
