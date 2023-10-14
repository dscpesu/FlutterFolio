import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  final Widget? appBar;
  final Widget? body;
  final Widget? floatingActionButton;
  final Drawer? drawer;
  final Color? backgroundColor;
  final BottomNavigationBar? bottomNavigationBar;

  CustomScaffold({
    this.appBar,
    this.body,
    this.floatingActionButton,
    this.drawer,
    this.backgroundColor,
    this.bottomNavigationBar,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar as PreferredSizeWidget?,
      body: body,
      floatingActionButton: floatingActionButton,
      drawer: drawer,
      backgroundColor: backgroundColor,
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
