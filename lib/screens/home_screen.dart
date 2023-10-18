import 'package:flutter/material.dart';
import 'package:flutter_folio/widgets/app_bar_widget.dart';
import 'package:flutter_folio/widgets/scaffold_widget.dart';

import '/models/widget_model.dart';
import '/data/widget_data.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: CustomAppBar(
        title: 'FlutterFolio Widget Catalog',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        child: ListView.builder(
          itemCount: widgetData.length,
          itemBuilder: (context, index) {
            final widgetModel = widgetData[index];
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/widgetDetail',
                      arguments: widgetModel);
                },
                child: Text(widgetModel.name),
              ),
            );
          },
        ),
      ),
    );
  }
}
