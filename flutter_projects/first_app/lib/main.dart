// all flutter applications must start with runApp().
//It is a keyword invented by flutter. it is  fuction
// the runApp() must be called by a void function you create
// the void function you create must be named main

// MaterialApp is the core widget for flutter. It is a class
import 'package:first_app/gradient_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer([
          Color.fromARGB(255, 36, 31, 115),
          Color.fromARGB(255, 120, 116, 173),
          Color.fromARGB(255, 22, 20, 41),
        ]),
      ),
    ),
  );
}
