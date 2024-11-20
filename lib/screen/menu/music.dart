import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_ui_meditation_app/components/app_circle_button.dart';

class MusicPage extends StatefulWidget {
  const MusicPage({super.key});

  @override
  State<MusicPage> createState() => _MusicPageState();
}

class _MusicPageState extends State<MusicPage> {
  double _currentSliderValue = 20;
  final int songDuration = 187; // Durasi lagu dalam detik (3 menit)

  String _formatDuration(double value) {
    int minutes = value ~/ 60;
    int seconds = (value % 60).toInt();
    return '$minutes:${seconds.toString().padLeft(2, '0')}';
  }

  @override
  Widget build(BuildContext context) {
    final isFirstRoute = Navigator.of(context).canPop() ==
        false; // True jika halaman ini adalah yang pertama
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: isDarkMode
          ? const Color(0xFF02174C)
          : Theme.of(context).scaffoldBackgroundColor,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: ClipRRect(
              child: SvgPicture.asset(
                'assets/images/musicv2/buuble1.svg',
                fit: BoxFit.contain,
                // height: 70,
                colorFilter: ColorFilter.mode(
                  isDarkMode
                      ? const Color(0xFF1F265E)
                      : const Color(0xFFF2EDE4),
                  BlendMode.srcIn,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: ClipRRect(
              child: SvgPicture.asset(
                'assets/images/musicv2/buuble2.svg',
                fit: BoxFit.contain,
                // height: 70,
                colorFilter: ColorFilter.mode(
                  isDarkMode
                      ? const Color(0xFF1F265E)
                      : const Color(0xFFF2EDE4),
                  BlendMode.srcIn,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: ClipRRect(
              child: SvgPicture.asset(
                'assets/images/musicv2/bubble3.svg',
                fit: BoxFit.contain,
                // height: 70,
                colorFilter: ColorFilter.mode(
                  isDarkMode
                      ? const Color(0xFF1F265E)
                      : const Color(0xFFF2EDE4),
                  BlendMode.srcIn,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: ClipRRect(
              child: SvgPicture.asset(
                'assets/images/musicv2/bubble4.svg',
                fit: BoxFit.contain,
                // height: 70,
                colorFilter: ColorFilter.mode(
                  isDarkMode
                      ? const Color(0xFF1F265E)
                      : const Color(0xFFF2EDE4),
                  BlendMode.srcIn,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Visibility(
                      visible: !isFirstRoute,
                      child: AppCircleButton(
                        onTap: () => Navigator.pop(context),
                      ),
                    ),
                    const Row(
                      children: [
                        AppCircleButton(
                          isTransparent: true,
                          icon: Icon(
                            Icons.heart_broken_sharp,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        AppCircleButton(
                          isTransparent: true,
                          icon: Icon(
                            Icons.file_download_rounded,
                            color: Colors.white,
                          ),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Focus Attention',
                  style: Theme.of(context)
                      .textTheme
                      .headlineLarge
                      ?.copyWith(fontWeight: FontWeight.w100),
                ),
                Text('7 DAYS OF CALM',
                    style: Theme.of(context).textTheme.bodyMedium),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.rotate_left_sharp,
                      size: 50,
                      color: Color(0xFFA0A3B1),
                    ),
                    const SizedBox(width: 50),
                    Container(
                      width: 110,
                      height: 110,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color:
                            Theme.of(context).primaryColorDark.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(
                            55), // Radius for rounded corners
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Theme.of(context)
                              .primaryColorDark
                              .withOpacity(0.7),
                          borderRadius: BorderRadius.circular(
                              55), // Radius for rounded corners
                        ),
                        child: Icon(
                          Icons.pause,
                          size: 50,
                          color: Theme.of(context).primaryColorLight,
                        ),
                      ),
                    ),
                    const SizedBox(width: 50),
                    const Icon(
                      Icons.rotate_right_sharp,
                      size: 50,
                      color: Color(0xFFA0A3B1),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Slider(
                  value: _currentSliderValue,
                  max: songDuration.toDouble(),
                  divisions: songDuration,
                  activeColor: Theme.of(context).primaryColorDark,
                  label: _formatDuration(_currentSliderValue),
                  onChanged: (double value) {
                    setState(() {
                      _currentSliderValue = value;
                    });
                  },
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(_formatDuration(_currentSliderValue)),
                      Text(_formatDuration(songDuration.toDouble())),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
