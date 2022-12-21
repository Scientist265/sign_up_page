import 'package:flutter/material.dart';

import '../utils/styles.dart';

class BottomButton extends StatelessWidget {
  final text;
  final color;
  final bool? isColor;
  const BottomButton({
    super.key,
    required this.text,
    required this.color,
    this.isColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: isColor == null ? color : Styles.buttonColor),
      child: Center(
          child: Text(
        text,
        style: isColor == null
            ? Styles.buttonStyle.copyWith(color: Styles.textColor)
            : Styles.buttonStyle.copyWith(color: Colors.white),
      )),
    );
  }
}
