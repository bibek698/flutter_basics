import 'package:flutter/material.dart';
import 'gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        //container is a widget that allows you to customize its child widget layout and styles.
        body: GradientContainer(),
      ),
    ),
  );
}
