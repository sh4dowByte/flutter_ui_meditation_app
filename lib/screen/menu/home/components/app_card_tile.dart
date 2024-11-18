import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppCardTile extends StatelessWidget {
  final Color? color;
  final String? svg;
  final String? type;
  final String? duration;
  final String? title;

  const AppCardTile(
      {this.color, this.svg, this.type, this.duration, this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 164,
      width: 162,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 113,
              decoration: BoxDecoration(
                color: color,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
              child: Align(
                alignment: Alignment.topRight,
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(
                        10), // Sama dengan border radius di Container
                  ),
                  child: SvgPicture.asset(
                    'assets/images/resource/$svg.svg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title!, style: Theme.of(context).textTheme.titleMedium),
                  Row(
                    children: [
                      Text(
                        type!,
                        style: Theme.of(context).textTheme.labelSmall,
                      ),
                      Text(
                        ' • ',
                        style: Theme.of(context).textTheme.labelSmall,
                      ),
                      Text(
                        duration!,
                        style: Theme.of(context).textTheme.labelSmall,
                      ),
                    ],
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
