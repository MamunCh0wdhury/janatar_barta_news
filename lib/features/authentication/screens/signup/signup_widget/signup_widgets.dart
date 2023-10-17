import 'package:flutter/material.dart';
import 'package:janatar_barta/utils/constants/size.dart';
import 'package:janatar_barta/utils/helpers/helper_function.dart';

// ignore: must_be_immutable
class SignUpOption extends StatelessWidget {
  String signInText;
  String imagePath;

  SignUpOption({
    required this.signInText,
    required this.imagePath,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: dark ? Colors.white : Colors.black),),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image(
                image: AssetImage(imagePath),
                height: TSize.imageHeight,
              ),
              Text(
                signInText,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(width: 20,)

            ],
          ),
        ),
      ),
    );
  }
}
