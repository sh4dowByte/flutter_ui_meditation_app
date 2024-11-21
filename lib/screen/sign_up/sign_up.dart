import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_ui_meditation_app/components/components.dart';
import 'package:flutter_ui_meditation_app/screen/sign_up/components/app_agree_privacy_policy.dart';

import '../../config/routes.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: SvgPicture.asset(
              'assets/images/welcome/background_x.svg',
              width: MediaQuery.of(context)
                  .size
                  .width, // Menyesuaikan lebar SVG sesuai layar
              height: MediaQuery.of(context).size.height *
                  0.5, // Setengah tinggi layar
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Theme.of(context).brightness == Brightness.light
                      ? const Color(0xFFFAF8F5)
                      : const Color.fromARGB(162, 3, 15, 44),
                  BlendMode.srcIn),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    AppBackButton(
                      onTap: () => Navigator.pop(context),
                    )
                  ],
                ),
                Text(
                  'Create your account ',
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.left,
                ),
                Column(
                  children: [
                    AppButton(
                      'CONTINUE WITH FACEBOOK',
                      icon: SvgPicture.asset(
                        'assets/images/welcome/facebook.svg',
                      ),
                      color: const Color(0xFF7583CA),
                    ),
                    const SizedBox(height: 20),
                    AppButton(
                      'CONTINUE WITH GOOGLE',
                      isReverse: true,
                      icon: SvgPicture.asset(
                        'assets/images/welcome/google.svg',
                      ),
                    ),
                    const SizedBox(height: 40),
                    Text(
                      'OR LOG IN WITH EMAIL',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ],
                ),
                Column(
                  children: [
                    const AppInputWithValidation(
                      hintText: 'Name',
                    ),
                    const SizedBox(height: 20),
                    const AppInputWithValidation(
                      hintText: 'Email',
                    ),
                    const SizedBox(height: 20),
                    const AppPasswordInput(
                      hintText: 'Password',
                    ),
                    const SizedBox(height: 20),
                    const AppAgreePrivacyPolicy(),
                    const SizedBox(height: 20),
                    AppButton(
                      'GET STARTED',
                      onTap: () => Navigator.pushNamed(context, Routes.welcome),
                    ),
                  ],
                ),
                RichText(
                  text: TextSpan(
                    text: 'ALREADY HAVE AN ACCOUNT? ',
                    style: Theme.of(context).textTheme.titleSmall,
                    children: <TextSpan>[
                      TextSpan(
                        text: 'SIGN IN',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF7583CA),
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.pushNamed(context, Routes.signIn);
                            // Handle the click
                          },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
