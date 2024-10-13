import 'dart:math';
import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<StatefulWidget> createState() {
    return _DiceRoller();
  }
}

var randomizer = Random();

class _DiceRoller extends State<DiceRoller> {
  var conter = 3;
  void diceRollClick() {
    setState(() {
      conter = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$conter.png',
          width: 150,
        ),
        TextButton(
            onPressed: diceRollClick,
            child: const Text(
              'Roll Dice',
              style: TextStyle(fontSize: 26, color: Colors.white),
            ))
      ],
    );
  }
}
