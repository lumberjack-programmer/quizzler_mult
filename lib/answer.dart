import 'package:quizzler_mult/question_bank.dart';
import 'option.dart';

enum AnswersSelected {firstAnswer, secondAnswer, thirdAnswer, fourthAnswer, unselected}

class Answer {

  late int _id;
  late String _text;
  late bool _option1;
  late bool _option2;
  late bool _option3;
  late bool _option4;


  late AnswersSelected firstAnswer;
  late AnswersSelected secondAnswer;
  late AnswersSelected thirdAnswer;
  late AnswersSelected fourthAnswer;

  QuestionBank _questionBank = QuestionBank();

  late List<Option> _correctUncorrectOptions;



  Answer({required int id, required String text, required bool option1, required bool option2,
    required bool option3, required bool option4, required List<Option> correctUncorrectOptions,
    required AnswersSelected firstAnswer,
    required AnswersSelected secondAnswer,
    required AnswersSelected thirdAnswer,
    required AnswersSelected fourthAnswer,
  }) {

    _id = id;
    _text = text;
    _option1 = option1;
    _option2 = option2;
    _option3 = option3;
    _option4 = option4;
    _correctUncorrectOptions = correctUncorrectOptions;

    this.firstAnswer = firstAnswer;
    this.secondAnswer = secondAnswer;
    this.thirdAnswer = thirdAnswer;
    this.fourthAnswer = fourthAnswer;

  }

  bool checkAnswer(int questionIndex, int optionIndex) {

    if (questionIndex == _id && optionIndex == 0) {
      return _option1 == _questionBank.questionBank[questionIndex].options[optionIndex].answer &&
          _questionBank.questionBank[questionIndex].options[optionIndex].answer == true  ? true : false;
    } else if (questionIndex == _id && optionIndex == 1) {
      return _option2 == _correctUncorrectOptions[optionIndex].answer &&
          _questionBank.questionBank[questionIndex].options[optionIndex].answer == true  ? true : false;
    } else if (questionIndex == _id && optionIndex == 2) {
      return _option3 == _correctUncorrectOptions[optionIndex].answer &&
          _questionBank.questionBank[questionIndex].options[optionIndex].answer == true  ? true : false;
    } else if (questionIndex == _id && optionIndex == 3) {
      return _option4 == _correctUncorrectOptions[optionIndex].answer &&
          _questionBank.questionBank[questionIndex].options[optionIndex].answer == true  ? true : false;
    }

    return false;
  }


  String getOptionText(int id) {
    return _questionBank.questionBank[_id].options[id].option;
  }

  List<Option> getCorrectUncorrectOptions () {
    return _correctUncorrectOptions;
  }

  set correctUncorrectOptions(List<Option> value) {
    _correctUncorrectOptions = value;
  }

  bool get option4 => _option4;

  set option4(bool value) {
    _option4 = value;
  }

  bool get option3 => _option3;

  set option3(bool value) {
    _option3 = value;
  }

  bool get option2 => _option2;

  set option2(bool value) {
    _option2 = value;
  }

  bool get option1 => _option1;

  set option1(bool value) {
    _option1 = value;
  }

  String get text => _text;

  set text(String value) {
    _text = value;
  }

  int getId() {
    return _id;
  }

  set id(int value) {
    _id = value;
  }


}