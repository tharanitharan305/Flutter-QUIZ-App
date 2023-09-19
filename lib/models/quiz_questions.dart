class QuizQuestion {
  const QuizQuestion(this.text, this.answers);
  final List<String> answers;
  final String text;
  List<String> getsuffeled() {
    List<String> suffel = List.of(answers);
    suffel.shuffle();
    return suffel;
  }
}
