import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '/screen/menu/home/widgets/app_card_box_large.dart';
import '/screen/menu/home/widgets/app_card_tile.dart';
import '/screen/menu/meditate/components/app_category.dart';

class SleepPage extends StatelessWidget {
  const SleepPage({super.key});

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
        'svg': 'cloud sleep',
        'title': 'Cloud Sleep',
        'type': 'MEDITATION',
        'duration': '3-10 MIN'
      },
    ];

    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                // Section 1
                Stack(
                  children: [
                    if (Theme.of(context).brightness == Brightness.dark) ...[
                      SizedBox(
                        width: double.infinity,
                        child: SvgPicture.asset(
                          'assets/images/welcome/header.svg',
                          fit: BoxFit
                              .contain, // Menghindari overflow dengan menjaga rasio aspek
                        ),
                      ),
                    ],
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(height: 20),
                            Text(
                              'Sleep Stories',
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineMedium
                                  ?.copyWith(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 5),
                            SizedBox(
                              width: 300,
                              child: Text(
                                'Soothing bedtime stories to help you fall into a deep and natural sleep',
                                style: Theme.of(context).textTheme.bodyLarge,
                                textAlign: TextAlign.center,
                              ),
                            ),
                            const SizedBox(height: 20),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                // Section 3
                const AppCategory(),

                // Section 4
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: AppCardBoxLarge(
                    color: Color(0xFF4472F0),
                    title: 'The ocean moon',
                    svg: 'sleep_bg',
                    description:
                        'Non-stop 8- hour mixes of our most popular sleep audio',
                  ),
                ),

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
                                      color: Color(int.parse(
                                          '0xFF${entry.value['color']}')),
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
                                      color: Color(int.parse(
                                          '0xFF${entry.value['color']}')),
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
          )
        ],
      ),
    );
  }
}
