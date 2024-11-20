import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_ui_meditation_app/components/components.dart';
import 'package:flutter_ui_meditation_app/screen/menu/home/components/app_card_tile.dart';
import 'package:google_fonts/google_fonts.dart';

class SleepMusic extends StatelessWidget {
  const SleepMusic({super.key});

  @override
  Widget build(BuildContext context) {
    List recomended = [
      {
        'color': '4C53B4',
        'svg': 'night_island',
        'title': 'Night Island',
        'type': 'SLEEP MUSIC',
        'duration': '3-10 MIN'
      },
      {
        'color': '4C53B4',
        'svg': 'sweet sleep',
        'title': 'Sweet Sleep',
        'type': 'MEDITATION',
        'duration': '3-10 MIN'
      },
      {
        'color': '4C53B4',
        'svg': 'moon sleep',
        'title': 'Moon Sleep',
        'type': 'MEDITATION',
        'duration': '3-10 MIN'
      },
      {
        'color': '4C53B4',
        'svg': 'night_island',
        'title': 'Night Island',
        'type': 'SLEEP MUSIC',
        'duration': '3-10 MIN'
      },
      {
        'color': '4C53B4',
        'svg': 'sweet sleep',
        'title': 'Sweet Sleep',
        'type': 'MEDITATION',
        'duration': '3-10 MIN'
      },
      {
        'color': '4C53B4',
        'svg': 'moon sleep',
        'title': 'Moon Sleep',
        'type': 'MEDITATION',
        'duration': '3-10 MIN'
      },
      {
        'color': '4C53B4',
        'svg': 'night_island',
        'title': 'Night Island',
        'type': 'SLEEP MUSIC',
        'duration': '3-10 MIN'
      },
      {
        'color': '4C53B4',
        'svg': 'sweet sleep',
        'title': 'Sweet Sleep',
        'type': 'MEDITATION',
        'duration': '3-10 MIN'
      },
      {
        'color': '4C53B4',
        'svg': 'moon sleep',
        'title': 'Moon Sleep',
        'type': 'MEDITATION',
        'duration': '3-10 MIN'
      },
      {
        'color': '4C53B4',
        'svg': 'night_island',
        'title': 'Night Island',
        'type': 'SLEEP MUSIC',
        'duration': '3-10 MIN'
      },
      {
        'color': '4C53B4',
        'svg': 'sweet sleep',
        'title': 'Sweet Sleep',
        'type': 'MEDITATION',
        'duration': '3-10 MIN'
      },
      {
        'color': '4C53B4',
        'svg': 'moon sleep',
        'title': 'Moon Sleep',
        'type': 'MEDITATION',
        'duration': '3-10 MIN'
      },
    ];

    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            const SizedBox(height: 20),

            Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    const Flexible(flex: 1, child: AppBackButton()),
                    Expanded(
                      flex: 4,
                      child: Text(
                        'Sleep Music',
                        textAlign: TextAlign.center,
                        style: Theme.of(context)
                            .textTheme
                            .headlineLarge
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Section 5
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Kolom pertama
                  Expanded(
                    child: Column(
                      children: recomended
                          .asMap()
                          .entries
                          .where((entry) =>
                              entry.key % 2 == 0) // Filter elemen genap
                          .map(
                            (entry) => Container(
                              margin: const EdgeInsets.only(bottom: 20),
                              child: AppCardTile(
                                  color: Color(
                                      int.parse('0xFF${entry.value['color']}')),
                                  svg: entry.value['svg'],
                                  title: entry.value['title'],
                                  type: entry.value['type'],
                                  duration: entry.value['duration']),
                            ),
                          )
                          .toList(),
                    ),
                  ),
                  const SizedBox(width: 8),
                  // Kolom kedua
                  Expanded(
                    child: Column(
                      children: recomended
                          .asMap()
                          .entries
                          .where((entry) =>
                              entry.key % 2 != 0) // Filter elemen ganjil
                          .map(
                            (entry) => Container(
                              margin: const EdgeInsets.only(bottom: 20),
                              child: AppCardTile(
                                  color: Color(
                                      int.parse('0xFF${entry.value['color']}')),
                                  svg: entry.value['svg'],
                                  title: entry.value['title'],
                                  type: entry.value['type'],
                                  duration: entry.value['duration']),
                            ),
                          )
                          .toList(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildGridItem(String text, String svg) {
    return Container(
      padding: const EdgeInsets.only(bottom: 10),
      margin: const EdgeInsets.all(8),
      // height: height,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Center(
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
              child: SvgPicture.asset(
                svg,
                fit: BoxFit
                    .contain, // Menghindari overflow dengan menjaga rasio aspek
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: SizedBox(
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)), // Sudut border
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                        sigmaX: 5.0, sigmaY: 5.0), // Intensitas blur
                    child: Container(
                      height: 52,
                      // width: 170,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.white.withOpacity(0.1),
                            Colors.white.withOpacity(0.2),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          text,
                          style: GoogleFonts.roboto(
                              fontSize: 18, color: Colors.white),
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
