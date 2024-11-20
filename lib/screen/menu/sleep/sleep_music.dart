import 'package:flutter/material.dart';
import 'package:flutter_ui_meditation_app/components/components.dart';
import 'package:flutter_ui_meditation_app/screen/menu/home/components/app_card_tile.dart';

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
}
