import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '/widgets/components.dart';

import '../config/routes.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? const WelcomePageLight()
        : const WelcomePageDark();
  }
}

class WelcomePageLight extends StatelessWidget {
  const WelcomePageLight({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF9AA2FD),
      body: Stack(
        children: [
          Positioned(
            bottom: -80,
            left: 0,
            right: 0,
            child: SvgPicture.asset(
              'assets/images/welcome/welcome_light.svg',
              width: MediaQuery.of(context)
                  .size
                  .width, // Menyesuaikan lebar SVG sesuai layar
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 80,
            left: 20,
            right: 20,
            child: AppButton(
              'GET STARTED',
              isReverse: true,
              color: Colors.white,
              onTap: () => Navigator.pushNamed(context, Routes.chooseTopic),
            ),
          ),
          const Positioned(
            top: 70,
            left: 0,
            right: 0,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 70, vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    child: Column(
                      children: [
                        AppSvg(
                          'assets/images/welcome/silent_moon.svg',
                        ),
                        SizedBox(height: 75),
                        Text(
                          'Hi Ahmad Juhdi, Welcome',
                          style: TextStyle(
                            color: Color(0xFFFFECCC),
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          'to Silent Moon',
                          style: TextStyle(
                            color: Color(0xFFFFECCC),
                            fontSize: 30,
                            fontWeight: FontWeight.w100,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 15),
                        Text(
                          'Explore the app, Find some peace of mind to prepare for meditation.',
                          style: TextStyle(
                              fontWeight: FontWeight.w100,
                              fontSize: 16,
                              color: Color(0xFFEBEAEC)),
                          textAlign: TextAlign.center,
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
    );
  }
}

class WelcomePageDark extends StatelessWidget {
  const WelcomePageDark({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 20,
            left: 0,
            right: 0,
            child: SvgPicture.asset(
              'assets/images/welcome/welcome_dark_moon.svg',
              width: MediaQuery.of(context)
                  .size
                  .width, // Menyesuaikan lebar SVG sesuai layar
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 300,
            left: 44,
            right: -44,
            child: SvgPicture.asset(
              'assets/images/welcome/welcome_dark_bird.svg',
              width: MediaQuery.of(context)
                  .size
                  .width, // Menyesuaikan lebar SVG sesuai layar
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 80,
            left: 20,
            right: 20,
            child: AppButton(
              'GET STARTED',
              onTap: () => Navigator.pushNamed(context, Routes.chooseTopic),
            ),
          ),
          const Positioned(
            top: 50,
            left: 0,
            right: 0,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 70, vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    child: Column(
                      children: [
                        SizedBox(height: 75),
                        Text(
                          'Wecome to Sleep',
                          style: TextStyle(
                            color: Color(0xFFE6E7F2),
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 15),
                        Text(
                          'Explore the new king of sleep. It uses sound and vesualization to create perfect conditions for refreshing sleep.',
                          style: TextStyle(
                            fontWeight: FontWeight.w100,
                            fontSize: 16,
                            color: Color(0xFFEBEAEC),
                          ),
                          textAlign: TextAlign.center,
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
    );
  }
}
