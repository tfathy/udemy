import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colorList, {super.key});
  final List<Color> colorList;

  @override
  Widget build(context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: colorList,
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
        ),
        child: const Center(child: DiceRoller()));
  }
}
