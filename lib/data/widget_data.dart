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
      description:
          'The AppBar displays the toolbar widgets, leading, title, and actions, above the bottom (if any). The bottom is usually used for a TabBar. If a flexibleSpace widget is specified then it is stacked behind the toolbar and the bottom widget.',
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
'''),
  WidgetModel(
      name: 'Scaffold',
      description:
          'In Flutter, the Scaffold widget offers a basic layout structure for visual apps. It helps position key elements like the app bar, floating action buttons, and snack bars. Essentially, it streamlines the creation of material design-based applications.',
      imagePath: 'assets/images/scaffold/scaffold.png',
      outputImage: 'assets/images/scaffold/scaffold_op.png',
      codeSnippet: '''import 'package:flutter/material.dart';

/// Flutter code sample for [Scaffold].

void main() => runApp(const ScaffoldExampleApp());

class ScaffoldExampleApp extends StatelessWidget {
  const ScaffoldExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ScaffoldExample(),
    );
  }
}

class ScaffoldExample extends StatefulWidget {
  const ScaffoldExample({super.key});

  @override
  State<ScaffoldExample> createState() => _ScaffoldExampleState();
}

class _ScaffoldExampleState extends State<ScaffoldExample> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample Code'),
      ),
      body: Center(child: Text('You have pressed the button _count times.')),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() => _count++),
        tooltip: 'Increment Counter',
        child: const Icon(Icons.add),
      ),
    );
  }
}
'''),
  // Add more widgets here
];
