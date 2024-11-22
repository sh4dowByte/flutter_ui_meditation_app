import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/components.dart';
import '../config/routes.dart';

class SignUpAndSigninPage extends StatelessWidget {
  const SignUpAndSigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Flexible(
            flex: 6,
            child: Stack(
              children: [
                SvgPicture.asset(
                  'assets/images/welcome/back_image.svg',
                  alignment: Alignment.topCenter,
                  width: double.infinity,
                  colorFilter: ColorFilter.mode(
                      Theme.of(context).brightness == Brightness.light
                          ? const Color(0xFFFAF8F5)
                          : const Color.fromARGB(162, 3, 15, 44),
                      BlendMode.modulate),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 80),
                      Theme.of(context).brightness == Brightness.light
                          ? const AppSvg(
                              'assets/images/welcome/silent_moon.svg',
                              replaceCollor: '3F414E',
                              currentCollor: 'FFFFFF',
                            )
                          : const AppSvg(
                              'assets/images/welcome/silent_moon.svg',
                            ),
                      const SizedBox(height: 40),
                      SvgPicture.asset(
                        'assets/images/welcome/person_chair.svg',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            flex: 3,
            child: Column(
              children: [
                Flexible(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 90),
                    child: Column(
                      children: [
                        Text(
                          'We are what we do',
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium!
                              .copyWith(fontWeight: FontWeight.w100),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          'Thousands of people are using Silent Moon for small meditations',
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(fontWeight: FontWeight.w100),
                        ),
                      ],
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        AppButton(
                          'SIGN UP',
                          onTap: () {
                            Navigator.pushNamed(context, Routes.signUp);
                          },
                        ),
                        const SizedBox(height: 20),
                        RichText(
                          text: TextSpan(
                            text: 'ALREADY HAVE AN ACCOUNT? ',
                            style: Theme.of(context).textTheme.titleSmall,
                            children: <TextSpan>[
                              TextSpan(
                                text: 'LOG IN',
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.pushNamed(context, Routes.signIn);
                                    // Handle the click
                                  },
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
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
