import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:janatar_barta/common/widgets/app_footer.dart';
import 'package:janatar_barta/common/widgets/common_button.dart';
import 'package:janatar_barta/common/widgets/common_divider.dart';
import 'package:janatar_barta/features/authentication/screens/login/login.dart';
import 'package:janatar_barta/features/authentication/screens/signup/signup_widget/sign_up_form.dart';
import 'package:janatar_barta/features/authentication/screens/signup/signup_widget/signup_widgets.dart';
import 'package:janatar_barta/utils/constants/image_strings.dart';
import 'package:janatar_barta/utils/constants/size.dart';
import 'package:janatar_barta/utils/constants/text_string.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 150.0, left: 25, right: 25),
          child: SingleChildScrollView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            child: Column(
              children: [
                /// -- Create account
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      TText.loginSubTitle1,
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                  ],
                ),
                const SizedBox(
                  height: TSize.xl,
                ),

                /// -- Sign Up Form
                const SignUpForm(),
                const SizedBox(
                  height: 35,
                ),

                /// -- Sign UP Button
                SignInButton(
                  onTap: () {},
                  textAsset: 'Create Account',
                ),
                const SizedBox(
                  height: 20,
                ),

                const CommonDivider(dividerText: 'Or'),
                const SizedBox(
                  height: 20,
                ),

                /// -- Sign Up with Google
                SignUpOption(
                    imagePath: TImages.google, signInText: TText.googleSignUp),
                const SizedBox(
                  height: TSize.md,
                ),

                /// -- Sign Up with Facebook
                SignUpOption(
                    signInText: TText.facebookSignUp,
                    imagePath: TImages.facebook),
                const SizedBox(
                  height: TSize.md,
                ),

                const SizedBox(
                  height: 20,
                ),

                /// -- App footer
                AppFooter(
                  titlePath: TText.accountSignUp,
                  subTitlePath: TText.accountSignTextUp,
                  onTap: () => Get.to(
                    const LoginScreen(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
