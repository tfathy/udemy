import 'package:flutter/material.dart';
import 'package:dice_app/gradient-container.dart';

void main() {
  const colors = [
    Color.fromARGB(204, 3, 17, 44),
    Color.fromARGB(206, 5, 10, 131),
    Color.fromARGB(207, 3, 20, 96)
  ];

  runApp(const MaterialApp(home: Scaffold(body: GradientContainer(colors))));
}
