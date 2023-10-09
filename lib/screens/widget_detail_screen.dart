// widget_detail_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_folio/models/widget_model.dart';

class WidgetDetailScreen extends StatelessWidget {
  final WidgetModel widget;

  WidgetDetailScreen({required this.widget});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Image.asset(
              widget.imagePath,
              width: 200,
            ),
            const Text(
              'Description:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              widget.description,
              style: TextStyle(fontSize: 16),
            ),
           
            // Add code snippet or additional details here
          ],
        ),
      ),
    );
  }
}
