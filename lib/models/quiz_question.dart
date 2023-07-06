class QuizQuestion{
  QuizQuestion(this.questionText,this.answerText);
  final String questionText;
  final List<String> answerText;
  getShuffledAnswers(){
    final newShuffledAnswersList = List.of(answerText);
    newShuffledAnswersList.shuffle();
    return newShuffledAnswersList;
  }
}