import 'package:flutter/material.dart';
import 'package:janatar_barta/utils/constants/size.dart';
import 'package:janatar_barta/utils/constants/text_string.dart';

import '../../utils/constants/image_strings.dart';
class AppHeader extends StatelessWidget {
  const AppHeader({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image(
          image: AssetImage(
            dark ? TImages.darkAppLogo : TImages.lightAppLogo,
          ),
          height: TSize.imageHeight,
        ),
        const SizedBox(
          width: TSize.sm,
        ),
        Text(TText.loginTitle,
            style: Theme.of(context).textTheme.headlineMedium),
      ],
    );
  }
}