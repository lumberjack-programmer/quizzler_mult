import 'answer.dart';

class OptionModel {
 final String option;
 final bool answer;
 late AnswersSelected? firstAnswer;
 late AnswersSelected? secondAnswer;
 late AnswersSelected? thirdAnswer;
 late AnswersSelected? fourthAnswer;



  OptionModel({required this.option, required this.answer,
   this.firstAnswer = AnswersSelected.unselected,
   this.secondAnswer = AnswersSelected.unselected,
   this.thirdAnswer = AnswersSelected.unselected,
   this.fourthAnswer = AnswersSelected.unselected,
  });



}