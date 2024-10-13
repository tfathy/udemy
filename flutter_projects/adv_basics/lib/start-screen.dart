import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 200,
          color: const Color.fromARGB(123, 255, 255, 255),
        ),
        const SizedBox(height: 100),
        const Text(
          'Learn Futter the fun way!',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        const SizedBox(height: 20),
        OutlinedButton.icon(
            onPressed: () {
              startQuiz();
            },
            label: const Text('Start Quiz',
                style: TextStyle(color: Colors.white, fontSize: 15)),
            icon: const Icon(
              Icons.add_link_sharp,
              color: Colors.white,
            ))
      ],
    );
  }
}
