import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../utils/color.dart';

class AppCardBox extends StatelessWidget {
  final Color? color;
  final String? svg;
  final String? type;
  final String? duration;
  final String? title;

  const AppCardBox(
      {this.color, this.svg, this.type, this.duration, this.title, super.key});

  @override
  Widget build(BuildContext context) {
    final brightness = getBrightness(color!);
    final textColor =
        brightness == Brightness.dark ? Colors.white : Colors.black;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      height: 210,
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(
                      20), // Sama dengan border radius di Container
                ),
                child: SvgPicture.asset(
                  'assets/images/resource/$svg.svg',
                  fit: BoxFit.contain,
                  width: 100,
                  height: 100,
                ),
              ),
            ),
            Container(
              width: 130,
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title!,
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: textColor,
                    ),
                  ),
                  Text(
                    type!,
                    style: GoogleFonts.roboto(
                      fontSize: 11,
                      color: textColor,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    duration!,
                    style: GoogleFonts.roboto(
                      fontSize: 12,
                      color: textColor,
                    ),
                  ),
                  Container(
                      decoration: BoxDecoration(
                        color: brightness == Brightness.dark
                            ? Colors.white
                            : Colors.black,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(25)),
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
            ),
          ],
        ),
      ),
    );
  }
}
