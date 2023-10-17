import 'package:flutter/material.dart';
import 'package:janatar_barta/utils/constants/colors.dart';
import 'package:janatar_barta/utils/constants/size.dart';

// ignore: must_be_immutable
class AppFooter extends StatelessWidget {

  String titlePath;
  String subTitlePath;
   AppFooter({
    required this.titlePath,
    required this.subTitlePath,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          titlePath,
          style: const TextStyle(fontFamily: 'Poppins-Regular'),
        ),
        const SizedBox(
          width: TSize.sm,
        ),
        Text(
        subTitlePath,
          style: const TextStyle(
              color: TColors.textGreen,
              fontWeight: FontWeight.w500,
              fontFamily: 'Poppins-Regular'),
        ),
      ],
    );
  }
}
