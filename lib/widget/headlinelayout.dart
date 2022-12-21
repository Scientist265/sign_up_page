import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/styles.dart';

class HeadLineLayout extends StatelessWidget {
  final headerText;
  final infoText;
  final imgPath;
  const HeadLineLayout({
    super.key,
    required this.headerText,
    required this.infoText,
    required this.imgPath,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(headerText, style: Styles.headLine),
                const Gap(3),
                Text(
                  infoText,
                  style: Styles.fieldTexts.copyWith(color: Colors.grey),
                ),
              ],
            ),
          ],
        ),
        Container(
            height: 123,
            width: 123,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(imgPath)))),
      ],
    );
  }
}
