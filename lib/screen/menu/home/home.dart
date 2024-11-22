import 'package:flutter/material.dart';
import 'package:flutter_ui_meditation_app/widgets/components.dart';
import 'widgets/app_card_rectangle.dart';
import 'widgets/app_card_box.dart';
import 'widgets/app_card_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List recomended = [
      {
        'color': 'AFDBC5',
        'svg': 'focus',
        'title': 'Focus',
        'type': 'MEDITATION',
        'duration': '3-10 MIN'
      },
      {
        'color': 'FBD89F',
        'svg': 'happines',
        'title': 'Happines',
        'type': 'MEDITATION',
        'duration': '3-10 MIN'
      },
      {
        'color': 'AFDBC5',
        'svg': 'personal growth',
        'title': 'Personal Growth',
        'type': 'MEDITATION',
        'duration': '3-10 MIN'
      },
      {
        'color': '8E97FD',
        'svg': 'basic',
        'title': 'Course',
        'type': 'MEDITATION',
        'duration': '3-10 MIN'
      },
    ];

    return SafeArea(
      child: Column(
        children: [
          const SizedBox(height: 30),
          Theme.of(context).brightness == Brightness.light
              ? const AppSvg(
                  'assets/images/welcome/silent_moon.svg',
                  replaceCollor: '3F414E',
                  currentCollor: 'FFFFFF',
                )
              : const AppSvg(
                  'assets/images/welcome/silent_moon.svg',
                ),
          const SizedBox(height: 10),
          Expanded(
            child: ListView(
              children: [
                // Section 1
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Good ${Theme.of(context).brightness == Brightness.dark ? 'Night' : 'Morning'}, Ahmad Juhdi',
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'We Wish you have a good day',
                        style: Theme.of(context).textTheme.titleLarge,
                      )
                    ],
                  ),
                ),

                // Section 2
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Flexible(
                        child: AppCardBox(
                            color: Color(0xFF8E97FD),
                            svg: 'basic',
                            title: 'Basic',
                            type: 'COURSE',
                            duration: '5-10 MIN'),
                      ),
                      Flexible(
                        child: AppCardBox(
                            color: Color(0xFFFFC97E),
                            svg: 'relaxation',
                            title: 'Relaxation',
                            type: 'MUSIC',
                            duration: '3-10 MIN'),
                      ),
                    ],
                  ),
                ),

                // Section 3
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: AppCardRectangle(
                    color: Color(0xFF333242),
                    bubbleColor: [
                      Color(0xFF444359),
                      Color(0xFF6C71A1),
                      Color(0xFF9B9DB4)
                    ],
                    title: 'Daily Thought',
                    type: 'MEDITATION',
                    duration: '3-10 MIN',
                  ),
                ),

                // Section 4
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    'Recomended for you',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
                SizedBox(
                  height: 170,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: recomended.length,
                    itemBuilder: (context, index) {
                      EdgeInsets margin = EdgeInsets.only(
                        left: index == 0 ? 20 : 8,
                        right: index == 9 ? 20 : 8,
                      );

                      var data = recomended[index];
                      return Container(
                        margin: margin,
                        child: AppCardTile(
                            color: Color(int.parse('0xFF${data['color']}')),
                            svg: data['svg'],
                            title: data['title'],
                            type: data['type'],
                            duration: data['duration']),
                      );
                    },
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
