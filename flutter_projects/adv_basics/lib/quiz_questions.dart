class QuizQuestion {
  const QuizQuestion(this.question, this.answer);
  final String question;
  final List<String> answer;

  List<String> shuffledList() {
    final List<String> shuffled = List.of(answer);
    shuffled.shuffle();
    return shuffled;
  }
}
