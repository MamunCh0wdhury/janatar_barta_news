import 'package:flutter/material.dart';
import 'package:janatar_barta/utils/constants/text_string.dart';

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
        Text(TText.loginTitle,
            style: Theme.of(context).textTheme.headlineMedium),
      ],
    );
  }
}