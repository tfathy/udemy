import 'package:adv_basics/answer_button.dart';
import 'package:flutter/material.dart';
import 'package:adv_basics/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen(this.onSelecteAnswer, {super.key});

  final void Function(String answer) onSelecteAnswer;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreen();
  }
}

class _QuestionsScreen extends State<QuestionsScreen> {
  var index = 0;
  void answerQuestion(String answer) {
    widget.onSelecteAnswer(answer);

    setState(() {
      index++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[index];

    return Center(
        child: Container(
      margin: const EdgeInsets.all(40),
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
              textAlign: TextAlign.center,
              currentQuestion.question,
              style: GoogleFonts.lato(
                  color: const Color.fromARGB(255, 203, 203, 236),
                  fontSize: 18,
                  fontWeight: FontWeight.bold)),
          const SizedBox(height: 20),
          ...currentQuestion.shuffledList().map((item) {
            return AnswerButton(item, () {
              answerQuestion(item);
            });
          }),
        ],
      ),
    ));
  }
}
