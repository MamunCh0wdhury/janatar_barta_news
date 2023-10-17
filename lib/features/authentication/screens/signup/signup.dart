import 'package:flutter/material.dart';
import 'package:janatar_barta/common/styles/spacing_style.dart';
import 'package:janatar_barta/common/widgets/app_footer.dart';
import 'package:janatar_barta/common/widgets/app_header.dart';
import 'package:janatar_barta/features/authentication/screens/signup/signup_widget/signup_widgets.dart';
import 'package:janatar_barta/utils/constants/image_strings.dart';
import 'package:janatar_barta/utils/constants/size.dart';
import 'package:janatar_barta/utils/constants/text_string.dart';
import 'package:janatar_barta/utils/helpers/helper_function.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Scaffold(
      body: Padding(
        padding: TSpacingStyle.paddingWithAppBarHeight,
        child: Column(
          children: [
            /// -- Logo with Text
            AppHeader(dark: dark),
            const SizedBox(
              height: TSize.xl,
            ),

            /// -- Join us
            Text(
              TText.loginSubTitle1,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const SizedBox(
              height: TSize.xl,
            ),

            /// -- Sign Up with Google
            SignUpOption(
                imagePath: TImages.google, signInText: TText.googleSignUp),
            const SizedBox(
              height: TSize.md,
            ),

            /// -- Sign Up with Facebook
            SignUpOption(
                signInText: TText.facebookSignUp, imagePath: TImages.facebook),
            const SizedBox(
              height: TSize.md,
            ),

            /// -- Sign Up with Email
            SignUpOption(
                signInText: TText.emailSignUp, imagePath: TImages.email),
            const SizedBox(
              height: TSize.xl,
            ),

            /// -- App footer
            AppFooter(
              titlePath: TText.accountSignUp,
              subTitlePath: TText.accountSignTextUp,
            ),
          ],
        ),
      ),
    );
  }
}
