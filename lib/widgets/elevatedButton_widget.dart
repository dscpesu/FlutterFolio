import 'package:flutter/material.dart';

enum ButtonType { primary, secondary }

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final ButtonType type;
  final VoidCallback onPressed;
  final IconData? iconData;

  CustomElevatedButton({
    required this.text,
    required this.onPressed,
    this.type = ButtonType.primary,
    this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    Color buttonColor;
    Color textColor;

    switch (type) {
      case ButtonType.primary:
        buttonColor = Colors.blue;
        textColor = Colors.white;
        break;
      default:  // ButtonType.secondary
        buttonColor = Colors.grey[200]!;
        textColor = Colors.black;
    }

    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: buttonColor,
        onPrimary: textColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (iconData != null) Icon(iconData, size: 18),
          if (iconData != null) SizedBox(width: 8),
          Text(text),
        ],
      ),
    );
  }
}
