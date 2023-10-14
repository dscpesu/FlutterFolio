import 'package:flutter/material.dart';
import 'package:flutterfolio/models/widget_model.dart';
import 'package:flutterfolio/widgets/app_bar_widget.dart';  // Import for CustomAppBar
import 'package:flutterfolio/widgets/scaffold_widget.dart';  // Ensure you import CustomScaffold
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/github.dart';

class WidgetDetailScreen extends StatelessWidget {
  final WidgetModel widget;

  WidgetDetailScreen({required this.widget});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: CustomAppBar(   // Utilizing the CustomAppBar
        title: widget.name,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
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
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              color: Colors.grey[300],
              child: HighlightView(
                widget.codeSnippet,
                language: 'dart',
                theme: githubTheme,
                padding: EdgeInsets.all(8.0),
                textStyle: TextStyle(fontSize: 16),
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
