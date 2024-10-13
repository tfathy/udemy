import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(this.buttonText, this.onTap, {super.key});
  final String buttonText;
  final void Function() onTap;

  @override
  Widget build(context) {
    return ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
            foregroundColor: const Color.fromARGB(255, 25, 17, 182),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 10)),
        child: Text(
          buttonText,
          textAlign: TextAlign.center,
        ));
  }
}
