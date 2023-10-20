import 'package:flutter/material.dart';
import 'package:flutter_folio/models/widget_model.dart';
import 'package:flutter_folio/widgets/app_bar_widget.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/github.dart';
import 'package:flutter_highlight/themes/dracula.dart';
import 'package:flutter_folio/widgets/scaffold_widget.dart';

class WidgetDetailScreen extends StatelessWidget {
  final WidgetModel widget;

  WidgetDetailScreen({required this.widget});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: AppBar(
        title: Text(widget.name),
        backgroundColor: Color(0xFF5078B2), // AppBar color from HomeScreen
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.blue[100]!,
              Colors.blue[400]!
            ], // Background gradient from HomeScreen
          ),
        ),
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              'Description:',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            SizedBox(height: 10),
            Text(
              widget.description,
              style: TextStyle(fontSize: 16, color: Colors.black),
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
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              color: Colors.grey[300],
              child: HighlightView(
                widget.codeSnippet,
                language: 'dart',
                theme: draculaTheme,
                padding: EdgeInsets.all(8.0),
                textStyle: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Code Output:',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(8.0),
              color: Colors.grey[300],
              child: Image.asset(
                widget.outputImage,
                width: 200,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
