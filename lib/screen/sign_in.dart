import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_ui_meditation_app/components/components.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

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
                  BlendMode.modulate),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Flexible(
                  flex: 1,
                  child: Row(
                    children: [AppBackButton()],
                  ),
                ),
                Flexible(
                  flex: 5,
                  child: Text(
                    'Welcome Back!',
                    style: Theme.of(context).textTheme.displayLarge,
                    textAlign: TextAlign.left,
                  ),
                ),
                Flexible(
                  flex: 5,
                  child: Column(
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
                ),
                Flexible(
                  flex: 8,
                  child: Column(
                    children: [
                      const AppTextInput(
                        hintText: 'Email Address',
                      ),
                      const SizedBox(height: 20),
                      const AppPasswordInput(
                        hintText: 'Password',
                      ),
                      const SizedBox(height: 20),
                      const AppButton(
                        'LOG IN',
                      ),
                      const SizedBox(height: 40),
                      Text(
                        'Forgot Password?',
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    ],
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: RichText(
                    text: TextSpan(
                      text: 'ALREADY HAVE AN ACCOUNT? ',
                      style: Theme.of(context).textTheme.titleSmall,
                      children: const <TextSpan>[
                        TextSpan(
                          text: 'SIGN UP',
                          style: TextStyle(
                            color: Colors.blue,
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
