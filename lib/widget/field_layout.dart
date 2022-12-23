import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../utils/styles.dart';

class FieldLayout extends StatelessWidget {
  final icon;
  final text;
  final bool obscure;
  const FieldLayout({
    super.key,
    required this.icon,
    required this.text,
    required this.obscure,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 70,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color(0xffebfdf3),
          boxShadow: const [
            BoxShadow(spreadRadius: 0.5, blurRadius: 2, color: Colors.grey)
          ]),
      child: Row(
        children: [
          Icon(
            icon,
            size: 30,
            color: Color(0XFF17482E),
          ),
          Gap(15),
          Expanded(
            child: TextField(
              obscureText: obscure,
              decoration: InputDecoration(
                  hintText: text, labelStyle: Styles.fieldTexts),
            ),
          )
          // Text(
          //   text,
          //   style: Styles.fieldTexts,
          // )
        ],
      ),
    );
  }
}
