import 'package:flutter/material.dart';
import 'package:janatar_barta/common/styles/spacing_style.dart';
import 'package:janatar_barta/common/widgets/app_footer.dart';
import 'package:janatar_barta/common/widgets/app_header.dart';
import 'package:janatar_barta/features/authentication/screens/login/login_widget/signIn_widgets.dart';
import 'package:janatar_barta/utils/constants/image_strings.dart';
import 'package:janatar_barta/utils/constants/size.dart';
import 'package:janatar_barta/utils/constants/text_string.dart';
import 'package:janatar_barta/utils/helpers/helper_function.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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

            /// -- Welcome Back
            Text(
              TText.loginSubTitle,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const SizedBox(
              height: TSize.xl,
            ),

            /// -- SignIn with Google
            SignInOption(
                imagePath: TImages.google, signInText: TText.googleSignIn),
            const SizedBox(
              height: TSize.md,
            ),

            /// -- SignIn with Facebook
            SignInOption(
                signInText: TText.facebookSignIn, imagePath: TImages.facebook),
            const SizedBox(
              height: TSize.md,
            ),

            /// -- Sign In with Email
            SignInOption(
                signInText: TText.emailSignIn, imagePath: TImages.email),
            const SizedBox(
              height: TSize.xl,
            ),

            /// -- App footer
             AppFooter(titlePath: TText.accountSign,subTitlePath: TText.accountSignText,),
          ],
        ),
      ),
    );
  }
}


