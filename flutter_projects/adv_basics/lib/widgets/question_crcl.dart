import 'package:flutter/material.dart';

class QuestionCircle extends StatelessWidget {
  const QuestionCircle(this.seq, {super.key});
  final String seq;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color.fromARGB(255, 31, 30, 30),
          width: 2,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(100)),
      ),
      child: Text(
        seq,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
