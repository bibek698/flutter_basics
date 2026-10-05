import 'package:flutter/material.dart';
import 'styled_text.dart';

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

// ignore: must_be_immutable
class GradientContainer extends StatelessWidget {
  const GradientContainer(this.startColor, this.endColor, {super.key});
  final Color startColor;
  final Color endColor;
  @override
  Widget build(context) {
    //container is a widget that allows you to customize its child widget layout and styles.
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [startColor, endColor],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),

      child: Center(child: StyledText('Hello World')),
    );
  }
}
