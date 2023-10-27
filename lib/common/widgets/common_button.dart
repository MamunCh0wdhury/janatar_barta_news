import 'package:flutter/material.dart';
class SignInButton extends StatelessWidget {
  final Function()? onTap;
  final String textAsset;
  const SignInButton({super.key, required this.onTap, required this.textAsset});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ,
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
           color: Colors.blue,
          borderRadius: BorderRadius.circular(8),
        ),
        child:  Center(
          child: Text(
            textAsset,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}