// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../config/routes.dart';
import '../utils/color.dart';

class ChoseTopicPage extends StatelessWidget {
  const ChoseTopicPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> items = [
      {
        'color': Color(0xFF808AFF),
        'text': 'Reduce Stress',
        'svg': 'assets/images/topic/reduce stress.svg',
      },
      {
        'color': Color(0xFFF05D48),
        'text': 'Improve Performanee',
        'svg': 'assets/images/topic/improve.svg',
      },
      {
        'color': Color(0xFFFEB18F),
        'text': 'Increase Happiness',
        'svg': 'assets/images/topic/increase happiness.svg',
      },
      {
        'color': Color(0xFFFFCF86),
        'text': 'Reduce Anxiety',
        'svg': 'assets/images/topic/reduce anxiety.svg',
      },
      {
        'color': Color(0xFF6CB28E),
        'text': 'Personal Growth',
        'svg': 'assets/images/topic/personal growth.svg',
      },
      {
        'color': Color(0xFF4E5567),
        'text': 'Beeter Sleep',
        'svg': 'assets/images/topic/beeter sleep.svg',
      },
      {
        'color': Color(0xFF8E97FD),
        'text': 'Reduce ',
        'svg': 'assets/images/topic/reduce stress.svg',
      },
      {
        'color': Color(0xFFD9A5B5),
        'text': 'Study',
        'svg': 'assets/images/topic/study.svg',
      },
    ];

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 100,
            right: 0,
            left: 0,
            child: SvgPicture.asset(
              'assets/images/welcome/background_cloud.svg',
              width: MediaQuery.of(context).size.width +
                  30, // Menyesuaikan lebar SVG sesuai layar
              height: MediaQuery.of(context).size.height +
                  100, // Setengah tinggi layar
              fit: BoxFit
                  .cover, // Mengatur SVG agar menutupi area yang diberikan
              colorFilter: ColorFilter.mode(
                Theme.of(context).brightness == Brightness.light
                    ? Color(0xFFFAF8F5)
                    : Color.fromARGB(162, 3, 15, 44),
                BlendMode.srcIn,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                flex: 4,
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        'What Brings you',
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                      Text(
                        'to Silent Moon?',
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                            fontSize: 28, fontWeight: FontWeight.w300),
                      ),
                      Text(
                        'choose a topic to focuse on:',
                        style: Theme.of(context).textTheme.titleLarge,
                      )
                    ],
                  ),
                ),
              ),
              Flexible(
                flex: 12,
                child: ListView(
                  padding: const EdgeInsets.all(8.0),
                  children: [
                    Row(
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
                                .map((entry) => AppTopicItems(
                                    onTap: () => Navigator.pushNamed(
                                        context, Routes.reminders),
                                    color: entry.value['color'],
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
                                .map((entry) => AppTopicItems(
                                    onTap: () => Navigator.pushNamed(
                                        context, Routes.reminders),
                                    color: entry.value['color'],
                                    text: entry.value['text'],
                                    svg: entry.value['svg']))
                                .toList(),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class AppTopicItems extends StatelessWidget {
  const AppTopicItems({
    super.key,
    this.onTap,
    required this.color,
    required this.text,
    required this.svg,
  });

  final Color color;
  final String text;
  final String svg;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final brightness = getBrightness(color);
    final textColor =
        brightness == Brightness.dark ? Colors.white : Colors.black;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.only(bottom: 10),
        margin: const EdgeInsets.all(8),
        // height: height,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            SvgPicture.asset(
              svg,
              fit: BoxFit
                  .contain, // Menghindari overflow dengan menjaga rasio aspek
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: [
                  Text(
                    text,
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(color: textColor),
                    textAlign: TextAlign.start,
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
