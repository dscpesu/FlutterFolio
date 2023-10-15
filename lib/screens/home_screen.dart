import 'package:flutter/material.dart';
import '/models/widget_model.dart';
import '/data/widget_data.dart';
import 'package:flutter_folio/widgets/app_bar_widget.dart';
import 'package:flutter_folio/widgets/scaffold_widget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: CustomAppBar(
        title: 'FlutterFolio Widget Catalog',
      ),
      body: ListView.builder(
        itemCount: widgetData.length,
        itemBuilder: (context, index) {
          final widgetModel = widgetData[index];
          return ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/widgetDetail',
                  arguments: widgetModel);
            },
            child: Text(widgetModel.name),
          );
        },
      ),
    );
  }
}
