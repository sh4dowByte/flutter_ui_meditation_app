import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../utils/color.dart';

class AppCardBoxLarge extends StatelessWidget {
  final Color? color;
  final String? svg;
  final String? description;
  final String? title;

  const AppCardBoxLarge(
      {this.color, this.svg, this.description, this.title, super.key});

  @override
  Widget build(BuildContext context) {
    final brightness = getBrightness(color!);
    final textColor =
        brightness == Brightness.dark ? Colors.white : Colors.black;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      height: 233,
      decoration: BoxDecoration(
        color: color,
        image: const DecorationImage(
          image: AssetImage(
              'assets/images/resource/sleep_bg.png'), // Gambar dari assets
          fit: BoxFit.cover, // Menyesuaikan gambar dengan ukuran container
        ),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title!,
            style: GoogleFonts.ebGaramond(
              fontWeight: FontWeight.bold,
              fontSize: 36,
              color: textColor,
            ),
          ),
          SizedBox(
            width: 300,
            child: Text(
              description!,
              textAlign: TextAlign.center,
              style: GoogleFonts.roboto(
                fontSize: 16,
                color: textColor,
                fontWeight: FontWeight.w100,
              ),
            ),
          ),
          const SizedBox(height: 22),
          Container(
              decoration: BoxDecoration(
                color:
                    brightness == Brightness.dark ? Colors.white : Colors.black,
                borderRadius: const BorderRadius.all(Radius.circular(25)),
              ),
              height: 35,
              width: 70,
              child: Center(
                  child: Text(
                'Start',
                style: TextStyle(
                    color: brightness != Brightness.dark
                        ? Colors.white
                        : Colors.black),
              ))),
        ],
      ),
    );
  }
}
