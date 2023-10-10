// widget_data.dart
import 'package:flutterfolio/models/widget_model.dart';

List<WidgetModel> widgetData = [
  WidgetModel(
    name: 'lorem ipsum',
    description: 'Description for the widget goes here.',
    imagePath: 'assets/images/widget_image.png',
    outputImage: '',
    codeSnippet: '',
  ),
  WidgetModel(
    name: 'lorem ipsum',
    description: 'Description for the widget goes here.',
    imagePath: 'assets/images/widget_image.png',
    outputImage: '',
    codeSnippet: '',
  ),
  WidgetModel(
    name: 'AppBar',
    description: 'The AppBar displays the toolbar widgets, leading, title, and actions, above the bottom (if any). The bottom is usually used for a TabBar. If a flexibleSpace widget is specified then it is stacked behind the toolbar and the bottom widget.',
    imagePath: 'assets/images/app_bar/app_bar.png', 
    outputImage: 'assets/images/app_bar/app_bar_op.png',
    codeSnippet: '''import 'package:flutter/material.dart';

/// Flutter code sample for [AppBar].

void main() => runApp(const AppBarApp());

class AppBarApp extends StatelessWidget {
  const AppBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AppBarExample(),
    );
  }
}

class AppBarExample extends StatelessWidget {
  const AppBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AppBar Demo'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_alert),
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('This is a snackbar')));
            },
          ),
          IconButton(
            icon: const Icon(Icons.navigate_next),
            tooltip: 'Go to the next page',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute<void>(
                builder: (BuildContext context) {
                  return Scaffold(
                    appBar: AppBar(
                      title: const Text('Next page'),
                    ),
                    body: const Center(
                      child: Text(
                        'This is the next page',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                  );
                },
              ));
            },
          ),
        ],
      ),
      body: const Center(
        child: Text(
          'This is the home page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
'''
  ),
  // Add more widgets here
];


