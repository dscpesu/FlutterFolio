// widget_data.dart
import 'package:flutter_folio/models/widget_model.dart';

List<WidgetModel> widgetData = [
  WidgetModel(
      name: "Text Widget",
      description:
          "The Text widget displays a string of text with single style. The string might break across multiple lines or might all be displayed on the same line depending on the layout constraints.The style argument is optional. When omitted, the text will use the style from the closest enclosing DefaultTextStyle. If the given style\'s TextStyle.inherit property is true (the default), the given style will be merged with the closest enclosing DefaultTextStyle. This merging behavior is useful, for example, to make the text bold while using the default font family and size.",
      imagePath: "assets/textwidget.jpg"),
  WidgetModel(
    name: 'lorem ipsum',
    description: 'Description for the widget goes here.',
    imagePath: 'assets/images/widget_image.png',
  ),
  WidgetModel(
    name: 'lorem ipsum',
    description: 'Description for the widget goes here.',
    imagePath: 'assets/images/widget_image.png',
  ),
  // Add more widgets here
];
