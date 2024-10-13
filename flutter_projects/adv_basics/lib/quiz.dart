import 'package:adv_basics/questions.dart';
import 'package:adv_basics/questions_screen.dart';

import 'package:adv_basics/start-screen.dart';
import 'package:adv_basics/widgets/result_screen.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _Quiz();
  }
}

class _Quiz extends State<Quiz> {
  var activeScreen = 'start-screen';
  List<String> selectedAnswers = [];

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        // selectedAnswers = [];
        activeScreen = 'result_screen';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(chooseAnswer);
    }
    if (activeScreen == 'result_screen') {
      screenWidget = ResultsScreen(selectedAnswers);
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(199, 84, 76, 236),
            Color.fromARGB(200, 20, 10, 200),
            Color.fromARGB(116, 4, 3, 33)
          ])),
          child: Center(child: screenWidget),
        ),
      ),
    );
  }
}
