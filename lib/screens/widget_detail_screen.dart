// widget_detail_screen.dart
import 'package:flutter/material.dart';
import 'package:flutterfolio/models/widget_model.dart';
import 'package:flutterfolio/widgets/app_bar_widget.dart';


class WidgetDetailScreen extends StatelessWidget {
  final WidgetModel widget;

  WidgetDetailScreen({required this.widget});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: widget.name,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          // Change Column to ListView
          children: [
            Text(
              'Description:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              widget.description,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(8.0), 
              color: Colors.grey[300],
              child: Image.asset(
                widget.imagePath,
                width: 200,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Code Snippet:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              color: Colors.grey[300],
              child: Text(
                widget.codeSnippet,
                style: TextStyle(fontFamily: 'Courier', fontSize: 14),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Code Output:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(8.0), 
              color: Colors.grey[300],
              child: Image.asset(
                widget.outputImage,
                width: 200,
              ),
            )
          ],
        ),
      ),
    );
  }
}
