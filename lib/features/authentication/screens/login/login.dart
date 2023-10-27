import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:janatar_barta/common/widgets/app_footer.dart';
import 'package:janatar_barta/common/widgets/common_button.dart';
import 'package:janatar_barta/common/widgets/common_divider.dart';
import 'package:janatar_barta/features/authentication/screens/login/login_widget/signIn_widgets.dart';
import 'package:janatar_barta/features/authentication/screens/signup/signup.dart';
import 'package:janatar_barta/utils/constants/image_strings.dart';
import 'package:janatar_barta/utils/constants/size.dart';
import 'package:janatar_barta/utils/constants/text_string.dart';
import 'login_widget/forget_password.dart';
import 'login_widget/login_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 150.0, left: 25.0, right: 25.0),
          child: SingleChildScrollView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                /// -- Welcome Back
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      TText.loginSubTitle,
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                  ],
                ),
                const SizedBox(
                  height: TSize.xl,
                ),

                /// --Email LogInForm
                const LoginForm(),
                const SizedBox(
                  height: 5.0,
                ),
                const ForgetPassword(),

                const SizedBox(
                  height: 20,
                ),

                /// -- Login Button
                SignInButton(onTap: () {}, textAsset: 'Login'),
                const SizedBox(
                  height: 20,
                ),

                /// -- Divider
                const CommonDivider(dividerText: 'Or'),
                const SizedBox(
                  height: 20,
                ),

                /// -- SignIn with Google
                SignInOption(
                    imagePath: TImages.google, signInText: TText.googleSignIn),
                const SizedBox(
                  height: TSize.md,
                ),

                /// -- SignIn with Facebook
                SignInOption(
                    signInText: TText.facebookSignIn,
                    imagePath: TImages.facebook),
                const SizedBox(
                  height: TSize.md,
                ),
                const SizedBox(
                  height: 30,
                ),

                /// -- App footer
                AppFooter(
                  titlePath: TText.accountSign,
                  subTitlePath: TText.accountSignText,
                  onTap: () => Get.to(
                    const SignUpScreen(),
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
