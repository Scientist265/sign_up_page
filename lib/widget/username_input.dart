import 'package:flutter/material.dart';
import 'field_layout.dart';

class TextInput extends StatelessWidget {
  const TextInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const FieldLayout(
        icon: Icon(
          Icons.edit,
          size: 25,
          color: Colors.white,
        ),
        text: 'enter user name',
        obscure: false);
  }
}
