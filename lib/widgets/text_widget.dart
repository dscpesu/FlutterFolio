import 'package:flutter/material.dart';

enum TextType { title, subtitle, body }

class CustomText extends StatelessWidget {
  final String text;
  final TextType type;

  const CustomText(this.text, {super.key, this.type = TextType.body});

  @override
  Widget build(BuildContext context) {
    TextStyle style;

    switch (type) {
      case TextType.title:
        style = const TextStyle(fontSize: 24, fontWeight: FontWeight.bold);
        break;
      case TextType.subtitle:
        style = const TextStyle(fontSize: 18, fontWeight: FontWeight.w500);
        break;
      default:
        style = const TextStyle(fontSize: 14);
    }

    return Text(
      text,
      style: style,
    );
  }
}
