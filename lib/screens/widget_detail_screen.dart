import 'package:flutter/material.dart';
import 'package:flutter_folio/models/widget_model.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/dracula.dart';
import 'package:flutter_folio/widgets/scaffold_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class WidgetDetailScreen extends StatelessWidget {
  final WidgetModel widget;

  const WidgetDetailScreen({super.key, required this.widget});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(widget.name,
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            )),
        backgroundColor: const Color(0xFF64B5F6), // AppBar color from HomeScreen
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
            const Text(
              'Description:',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            const SizedBox(height: 10),
            Text(
              widget.description,
              style: const TextStyle(fontSize: 16, color: Colors.black),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(8.0),
              color: Colors.grey[300],
              child: Image.asset(
                widget.imagePath,
                width: 200,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Code Snippet:',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              color: Colors.grey[300],
              child: HighlightView(
                widget.codeSnippet,
                language: 'dart',
                theme: draculaTheme,
                padding: const EdgeInsets.all(8.0),
                textStyle: const TextStyle(fontSize: 16),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Code Output:',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(8.0),
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
