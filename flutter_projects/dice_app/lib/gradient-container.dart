import 'package:flutter/material.dart';
import 'package:dice_app/dice-roller.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colors, {super.key});
  final List<Color> colors;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: colors, begin: Alignment.topRight, end: Alignment.center),
        ),
        child: const Center(child: DiceRoller()));
  }
}
