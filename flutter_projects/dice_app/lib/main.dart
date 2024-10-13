import 'package:flutter/material.dart';
import 'package:dice_app/gradient-container.dart';

void main() {
  const colors = [
    Color.fromARGB(100, 130, 200, 100),
    Color.fromARGB(99, 85, 149, 57),
    Color.fromARGB(99, 36, 77, 18)
  ];

  runApp(const MaterialApp(home: Scaffold(body: GradientContainer(colors))));
}
