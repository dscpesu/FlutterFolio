// widget_model.dart
class WidgetModel {
  final String name;
  final String description;
  final String imagePath;
  final String outputImage;
  final String codeSnippet;
  //can add more attributes here, make sure to intialize them in the constructor

  WidgetModel({
    required this.name,
    required this.description,
    required this.imagePath,
    required this.outputImage,
    required this.codeSnippet,
  });
}
