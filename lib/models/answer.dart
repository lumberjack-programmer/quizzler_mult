
enum AnswersSelected {firstAnswer, secondAnswer, thirdAnswer, fourthAnswer, unselected}

class Answer {

  final int id;
  final String text;
  late AnswersSelected firstAnswer;
  late AnswersSelected secondAnswer;
  late AnswersSelected thirdAnswer;
  late AnswersSelected fourthAnswer;
  late bool? totalQuestionAnswerResult;

  Answer({required this.id, required this.text,
    this.firstAnswer = AnswersSelected.unselected,
    this.secondAnswer = AnswersSelected.unselected,
    this.thirdAnswer = AnswersSelected.unselected,
    this.fourthAnswer = AnswersSelected.unselected,
    this.totalQuestionAnswerResult,
  });
}
