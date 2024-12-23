import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../utils/color.dart';

class AppCardRectangle extends StatelessWidget {
  final Color color;
  final List<Color> bubbleColor;
  final String title;
  final String duration;
  final String type;

  const AppCardRectangle(
      {required this.color,
      required this.title,
      required this.bubbleColor,
      required this.duration,
      required this.type,
      super.key});

  @override
  Widget build(BuildContext context) {
    final brightness = getBrightness(color);
    final textColor =
        brightness == Brightness.dark ? Colors.white : Colors.black;

    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          // padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
          height: 95,
          decoration: BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(10),
                  ),
                  child: SvgPicture.asset(
                    'assets/images/resource/bubble_1.svg',
                    fit: BoxFit.contain,
                    height: 70,
                    colorFilter: ColorFilter.mode(
                      bubbleColor[2],
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: ClipRRect(
                  child: SvgPicture.asset(
                    'assets/images/resource/bubble_2.svg',
                    fit: BoxFit.contain,
                    height: 30,
                    colorFilter: ColorFilter.mode(
                      bubbleColor[1],
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                  child: SvgPicture.asset(
                    'assets/images/resource/bubble_3.svg',
                    fit: BoxFit.contain,
                    height: 95,
                    colorFilter: ColorFilter.mode(
                      bubbleColor[0],
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(color: textColor),
                        ),
                        Row(
                          children: [
                            Text(
                              type,
                              style: Theme.of(context)
                                  .textTheme
                                  .labelSmall!
                                  .copyWith(color: textColor),
                            ),
                            const SizedBox(width: 10),
                            Text(
                              duration,
                              style: Theme.of(context)
                                  .textTheme
                                  .labelSmall!
                                  .copyWith(color: textColor),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: brightness == Brightness.dark
                            ? Colors.white
                            : Colors.black,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(70)),
                      ),
                      height: 45,
                      width: 45,
                      child: Center(
                        child: Icon(
                          Icons.play_arrow,
                          color: brightness != Brightness.dark
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
