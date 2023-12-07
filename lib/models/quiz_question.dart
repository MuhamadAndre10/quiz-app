class QuizQuestion {
  QuizQuestion(this.text, this.answare );

  final String text;
  final List<String> answare;

  // make a method 
  List<String> getShuffledAnsware() {
    final shuffledList = List.of(answare);
    shuffledList.shuffle();
    return shuffledList;
  }
}