import 'package:flutter/material.dart';
import 'styled_text.dart';

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});
  @override
  Widget build(context) {
    //container is a widget that allows you to customize its child widget layout and styles.
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blue, Colors.green],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),

      child: Center(child: StyledText()),
    );
  }
}
