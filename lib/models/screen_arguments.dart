import 'package:quizzler_mult/db/question_bank.dart';

import 'answer.dart';

class ScreenArguments {
  final QuestionBank questionBank;
  final int length = 0;
  final int correct = 0;
  final int wrong = 0;
  ScreenArguments(this.questionBank);
}