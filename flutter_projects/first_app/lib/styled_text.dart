import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.text, {super.key});
  final String text;

  @override
  Widget build(context) {
    return Center(
      child: Text(
        text,
        style: const TextStyle(
            color: Color.fromARGB(243, 247, 247, 55), fontSize: 28),
      ),
    );
  }
}
