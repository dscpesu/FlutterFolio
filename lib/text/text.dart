import 'package:flutter/material.dart';

class AnimatedCustomText extends StatefulWidget {
  final String text;
  final TextStyle textStyle;
  final Duration animationDuration;

  AnimatedCustomText({
    required this.text,
    this.textStyle = const TextStyle(),
    this.animationDuration = const Duration(milliseconds: 500),
  });

  ////
  _AnimatedCustomTextState createState() => _AnimatedCustomTextState();
}

class _AnimatedCustomTextState extends State<AnimatedCustomText>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _opacityAnimation;

  ////
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: widget.animationDuration,
    );
    _opacityAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);

    
    _controller.forward();
  }

  ////
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: _opacityAnimation.value,
      duration: widget.animationDuration,
      child: Text(
        widget.text,
        style: widget.textStyle,
      ),
    );
  }

  ////
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
