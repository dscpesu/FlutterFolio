// widget_data.dart
import 'package:flutter_folio/models/widget_model.dart';

List<WidgetModel> widgetData = [
  WidgetModel(
      name: 'Image',
      description:
          'The Image widget in Flutter is a fundamental component used to display images within an application. It provides a seamless way to incorporate visual content, such as icons, photographs, or graphics, into the user interface.',
      imagePath: 'assets/images/image/image.png',
      outputImage: 'assets/images/image/image_op.png',
      codeSnippet: '''import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            height: 300,
            width: 300,
            color: Colors.blue,
            child: Image.asset(
              'lib/images/playstation.jpg',
              fit: BoxFit.fill,),
          ),
        ),
      ),
    );
  }
}
  '''),
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
  WidgetModel(
      name: 'Container',
      description:
          'A convenience widget that combines common painting, positioning, and sizing widgets. A container first surrounds the child with padding (inflated by any borders present in the decoration) and then applies additional constraints to the padded extent (incorporating the width and height as constraints, if either is non-null). The container is then surrounded by additional empty space described from the margin.',
      imagePath: 'assets/images/container/container.png',
      outputImage: 'assets/images/container/container_op.png',
      codeSnippet: '''
      Center(
          child: Container(
          margin: const EdgeInsets.all(10.0),
          color: Colors.amber[600],
          width: 48.0,
          height: 48.0,
          ),  
      )'''),
  WidgetModel(
      name: 'ElevatedButton',
      description:
          'Use elevated buttons to add dimension to otherwise mostly flat layouts, e.g. in long busy lists of content, or in wide spaces. Avoid using elevated buttons on already-elevated content such as dialogs or cards.',
      imagePath: 'assets/images/elevatedButton/elevatedButton.png',
      outputImage: 'assets/images/elevatedButton/elevatedButton_op.png',
      codeSnippet: '''
      import 'package:flutter/material.dart';

/// Flutter code sample for [ElevatedButton].

void main() => runApp(const ElevatedButtonExampleApp());

class ElevatedButtonExampleApp extends StatelessWidget {
  const ElevatedButtonExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('ElevatedButton Sample')),
        body: const ElevatedButtonExample(),
      ),
    );
  }
}

class ElevatedButtonExample extends StatefulWidget {
  const ElevatedButtonExample({super.key});

  @override
  State<ElevatedButtonExample> createState() => _ElevatedButtonExampleState();
}

class _ElevatedButtonExampleState extends State<ElevatedButtonExample> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ElevatedButton(
            style: style,
            onPressed: null,
            child: const Text('Disabled'),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            style: style,
            onPressed: () {},
            child: const Text('Enabled'),
          ),
        ],
      ),
    );
  }
}
'''),
  WidgetModel(
      name: 'Text',
      description:
          'The Text widget displays a string of text with single style. The string might break across multiple lines or might all be displayed on the same line depending on the layout constraints.',
      imagePath: 'assets/images/text/text.png',
      outputImage: 'assets/images/text/text_op.png',
      codeSnippet: '''
      Text(
  'Hello, _name! How are you?',
  textAlign: TextAlign.center,
  overflow: TextOverflow.ellipsis,
  style: const TextStyle(fontWeight: FontWeight.bold),
)'''),
WidgetModel(
      name: 'Column',
      description:
          'The Column widget does not scroll (and in general it is considered an error to have more children in a Column than will fit in the available room). If you have a line of widgets and want them to be able to scroll if there is insufficient room, consider using a ListView.',
      imagePath: 'assets/images/column/column.png',
      outputImage: 'assets/images/column/column_op.png',
      codeSnippet: '''
      const Column(
  children: <Widget>[
    Text('Deliver features faster'),
    Text('Craft beautiful UIs'),
    Expanded(
      child: FittedBox(
        child: FlutterLogo(),
      ),
    ),
  ],
)'''),
  // Add more widgets here
];
