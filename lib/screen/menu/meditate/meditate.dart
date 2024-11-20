import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_ui_meditation_app/screen/menu/meditate/components/app_category.dart';
import '../home/components/app_card_rectangle.dart';
import 'components/app_card_frozen.dart';

class MeditatePage extends StatelessWidget {
  const MeditatePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> items = [
      {
        'text': '7 Days of Calm',
        'svg': 'assets/images/resource/days_of_calm.svg',
      },
      {
        'text': 'Anxiet Release',
        'svg': 'assets/images/resource/anxiet release.svg',
      },
      {
        'text': 'Beach',
        'svg': 'assets/images/resource/beach.svg',
      },
      {
        'text': 'Nature',
        'svg': 'assets/images/resource/nature.svg',
      },
    ];

    return Column(
      children: [
        const SizedBox(height: 20),
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
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 20),
                        Text('Meditate',
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium
                                ?.copyWith(fontWeight: FontWeight.bold)),
                        const SizedBox(height: 5),
                        Text(
                          'we can learn how to recognize when our minds are doing their normal everyday acrobatics.',
                          style: Theme.of(context).textTheme.bodyLarge,
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                ],
              ),

              // Section 2
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: [],
                ),
              ),

              // Section 3
              const AppCategory(),

              // Section 4
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: AppCardRectangle(
                  color: Color(0xFFF1DDCF),
                  bubbleColor: [
                    Color(0xFFECD3C2),
                    Color(0xFFFF7C6B),
                    Color(0xFFFAC978)
                  ],
                  title: 'Daily Calm',
                  type: 'APR 30',
                  duration: 'PAUSE PRACTICE',
                ),
              ),

              // Section 5
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Kolom pertama
                    Expanded(
                      child: Column(
                        children: items
                            .asMap()
                            .entries
                            .where((entry) =>
                                entry.key % 2 == 0) // Filter elemen genap
                            .map((entry) => AppCardFrozen(
                                text: entry.value['text'],
                                svg: entry.value['svg']))
                            .toList(),
                      ),
                    ),
                    const SizedBox(width: 8),
                    // Kolom kedua
                    Expanded(
                      child: Column(
                        children: items
                            .asMap()
                            .entries
                            .where((entry) =>
                                entry.key % 2 != 0) // Filter elemen ganjil
                            .map((entry) => AppCardFrozen(
                                text: entry.value['text'],
                                svg: entry.value['svg']))
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
    );
  }
}
