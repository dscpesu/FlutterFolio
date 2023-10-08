import 'package:flutter/material.dart';
import '/models/widget_model.dart';
import '/data/widget_data.dart';
import '/widgets/custom_text.dart'; // Import the custom Text widget.

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
              if (widget.name == 'Text') {
                // Create and display the custom "Text" widget.
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Scaffold(
                      appBar: AppBar(
                        title: Text(widget.name),
                      ),
                      body: Center(
                        child: CustomText(
                          text: 'Hello, Custom Text!',
                          textStyle: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              } else {
                // For other widgets, navigate to their respective detail screens.
                Navigator.pushNamed(context, '/widgetDetail', arguments: widget);
              }
            },
            child: Text(widget.name),
          );
        },
      ),
    );
  }
}
