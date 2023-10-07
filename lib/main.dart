import 'package:flutter/material.dart';
import 'package:flutterfolio/screens/home_screen.dart';
import 'package:flutterfolio/screens/widget_detail_screen.dart';
import 'package:flutterfolio/models/widget_model.dart';
import 'package:flutterfolio/theme/app_theme.dart';

void main() {
  runApp(FlutterFolioApp());
}

class FlutterFolioApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterFolio Widget Catalog',
      theme: AppTheme.lightTheme(), // Use your light theme
      initialRoute: '/', // Set the initial route
      routes: {
        '/': (context) => HomeScreen(),
        '/widgetDetail': (context) {
          final args =
              ModalRoute.of(context)!.settings.arguments as WidgetModel;
          return WidgetDetailScreen(widget: args); // Pass the widget argument
        },
      },
    );
  }
}
