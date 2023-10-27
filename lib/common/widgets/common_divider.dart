import 'package:flutter/material.dart';
import 'package:janatar_barta/utils/constants/colors.dart';
import 'package:janatar_barta/utils/helpers/helper_function.dart';

class CommonDivider extends StatelessWidget {
  const CommonDivider({
    super.key,
    required this.dividerText,
  });

  final String dividerText;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         Flexible(
          child: Divider(
            color: dark?TColors.white:TColors.darkerGrey,
            thickness: 0.5,
            indent: 60,
            endIndent: 5,
          ),
        ),
        Text(dividerText),
         Flexible(
          child: Divider(
            color: dark?TColors.white:TColors.darkerGrey,
            thickness: 0.5,
            indent: 5,
            endIndent: 60,
          ),
        ),
      ],
    );
  }
}
