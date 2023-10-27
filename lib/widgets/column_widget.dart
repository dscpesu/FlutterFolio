import 'package:flutter/material.dart';

enum ColumnType { spaced, centered }

class CustomColumn extends StatelessWidget {
  final List<Widget> children;
  final ColumnType type;

  const CustomColumn({super.key, required this.children, this.type = ColumnType.spaced});

  @override
  Widget build(BuildContext context) {
    MainAxisAlignment alignment;
    double spacing;

    switch (type) {
      case ColumnType.centered:
        alignment = MainAxisAlignment.center;
        spacing = 0.0;
        break;
      default: // ColumnType.spaced
        alignment = MainAxisAlignment.start;
        spacing = 8.0;
    }

    return Column(
      mainAxisAlignment: alignment,
      children: children.map((child) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: spacing / 2),
          child: child,
        );
      }).toList(),
    );
  }
}
