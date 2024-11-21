// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_ui_meditation_app/components/components.dart';

import '../config/routes.dart';
import 'menu/home/components/app_card_tile.dart';

class PlayOnPage extends StatefulWidget {
  const PlayOnPage({super.key});

  @override
  State<PlayOnPage> createState() => _PlayOnPageState();
}

class _PlayOnPageState extends State<PlayOnPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  bool isPlay = false;

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

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder:
              (BuildContext context, bool innnerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 290.0,
                floating: false,
                pinned: true,
                automaticallyImplyLeading: false,
                titleSpacing: 0.0,
                centerTitle: false,
                elevation: 0.0,
                leadingWidth: 0.0,
                title: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          AppCircleButton(
                              onTap: () => Navigator.pop(context),
                              icon: Icon(
                                Icons.arrow_back,
                                color: Colors.black,
                              )),
                          SizedBox(width: 15),
                          AnimatedOpacity(
                            opacity: innnerBoxIsScrolled ? 1.0 : 0.0,
                            duration: const Duration(seconds: 1),
                            curve: Curves.ease,
                            child: const Text(
                              'Night Island',
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          AppCircleButton(
                            isTransparent: true,
                            icon: Icon(Icons.download, color: Colors.white),
                          ),
                          SizedBox(width: 15),
                          AppCircleButton(
                            isTransparent: true,
                            icon: Icon(Icons.heart_broken, color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                flexibleSpace: FlexibleSpaceBar(
                  background: Container(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                      child: HeaderBodySliver(),
                    ),
                  ),
                ),
              ),
            ];
          },
          body: Stack(
            children: [
              Builder(
                builder: (BuildContext context) {
                  return SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Night Island',
                            style: Theme.of(context).textTheme.displaySmall,
                          ),
                          SizedBox(height: 15),
                          Row(
                            children: [
                              Text(
                                '45 MIN',
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                              Text(
                                '-',
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                              Text(
                                'SLEEP MUSIC',
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Text(
                            'Ease the mind into a restful night’s sleep  with these deep, amblent tones.',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(fontSize: 16),
                          ),
                          SizedBox(height: 30),
                          Row(
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.heart_broken,
                                    color: Color(0xFFFF84A2),
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    '24.234 Favorits',
                                    style:
                                        Theme.of(context).textTheme.bodyMedium,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(
                                    Icons.headphones,
                                    color: Color(0xFF67C8C1),
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    '24.234 Favorits',
                                    style:
                                        Theme.of(context).textTheme.bodyMedium,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 30),
                          if (!isPlay) ...[
                            Divider(),
                            SizedBox(height: 30),
                            Text(
                              'Related',
                              style: Theme.of(context).textTheme.headlineSmall,
                            ),
                            SizedBox(height: 20),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Kolom pertama
                                Expanded(
                                  child: Column(
                                    children: recomended
                                        .asMap()
                                        .entries
                                        .where((entry) =>
                                            entry.key % 2 ==
                                            0) // Filter elemen genap
                                        .map(
                                          (entry) => Container(
                                            margin: const EdgeInsets.only(
                                                bottom: 20),
                                            child: AppCardTile(
                                                color: Color(int.parse(
                                                    '0xFF${entry.value['color']}')),
                                                svg: entry.value['svg'],
                                                title: entry.value['title'],
                                                type: entry.value['type'],
                                                duration:
                                                    entry.value['duration']),
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
                                            entry.key % 2 !=
                                            0) // Filter elemen ganjil
                                        .map(
                                          (entry) => Container(
                                            margin: const EdgeInsets.only(
                                                bottom: 20),
                                            child: AppCardTile(
                                                color: Color(int.parse(
                                                    '0xFF${entry.value['color']}')),
                                                svg: entry.value['svg'],
                                                title: entry.value['title'],
                                                type: entry.value['type'],
                                                duration:
                                                    entry.value['duration']),
                                          ),
                                        )
                                        .toList(),
                                  ),
                                ),
                              ],
                            ),
                          ] else ...[
                            Text(
                              'Pick a Narrator',
                              style: Theme.of(context).textTheme.headlineSmall,
                            ),
                            SizedBox(height: 25),
                            TabBar(
                              controller: _tabController,
                              labelColor: Theme.of(context).primaryColor,
                              unselectedLabelColor: Colors.grey,
                              indicatorColor: Theme.of(context).primaryColor,
                              tabs: const [
                                Tab(text: "Male Voice"),
                                Tab(text: "Female Voice"),
                              ],
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height *
                                  0.4, // Misalnya 40% layar
                              child: TabBarView(
                                controller: _tabController,
                                children: const [
                                  VoiceTabPage(),
                                  VoiceTabPage(),
                                ],
                              ),
                            ),
                          ],
                        ],
                      ),
                    ),
                  );
                },
              ),
              Visibility(
                visible: !isPlay,
                child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: AppButton(
                        'PLAY',
                        onTap: () {
                          setState(() {
                            isPlay = !isPlay;
                          });
                        },
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class VoiceTabPage extends StatelessWidget {
  const VoiceTabPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MusicTile(
            title: 'Focus Attention',
            duration: '10 MIN',
          ),
          Divider(),
          MusicTile(
            title: 'Body Scan',
            duration: '5 MIN',
          ),
          Divider(),
          MusicTile(
            title: 'Making Happiness ',
            duration: '3 MIN',
          ),
        ],
      ),
    );
  }
}

class MusicTile extends StatelessWidget {
  final String title;
  final String duration;
  const MusicTile({
    required this.title,
    required this.duration,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pushNamed(Routes.music),
      child: Container(
        color: Colors.white.withOpacity(0),
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Icon(
                  Icons.play_arrow_rounded,
                  color: Colors.white,
                ),
              ),
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  Text(
                    duration,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HeaderBodySliver extends StatelessWidget {
  const HeaderBodySliver({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/resource/play_on.png',
      fit: BoxFit.cover,
    );
  }
}

class HeaderColapseSliver extends StatelessWidget {
  const HeaderColapseSliver({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 10.0,
      ),
      child: Text('Night Island'),
    );
  }
}
