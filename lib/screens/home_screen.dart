// home_screen.dart
import 'package:flutter/material.dart';
import '/models/widget_model.dart';
import '/data/widget_data.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FlutterFolio Widget Catalog'),
      ),
      body: ListView.builder(
        itemCount: widgetData.length,
        itemBuilder: (context, index) {
          final widget = widgetData[index];
          return ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/widgetDetail', arguments: widget);
            },
            child: Text(widget.name),
          );
        },
      ),
    );
  }
}
