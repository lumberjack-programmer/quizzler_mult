import 'package:quizzler_mult/answer.dart';

import 'option_model.dart';

class Question {
  late int id;
  late String text;
  late List<OptionModel> options;
  late bool? areUnselected;

  Question({required this.id, required this.text, required this.options, this.areUnselected = true});

  bool checkAnswers(int optionId) {
    if (optionId == 0) {
      if(options[optionId].answer == true && options[optionId].firstAnswer == AnswersSelected.firstAnswer){
        return true;
      } else {
        return false;
      }
    } else if (optionId == 1) {
      if(options[optionId].answer == true && options[optionId].secondAnswer == AnswersSelected.secondAnswer){
        return true;
      } else {
        return false;
      }
    } else if (optionId == 2) {
      if(options[optionId].answer == true && options[optionId].thirdAnswer == AnswersSelected.thirdAnswer){
        return true;
      } else {
        return false;
      }
    } else if (optionId == 3) {
      if(options[optionId].answer == true && options[optionId].fourthAnswer == AnswersSelected.fourthAnswer){
        return true;
      } else {
        return false;
      }
    }
    return false;
  }

  bool allAnswersCorrect() {
    if (options[0].answer == true && options[0].firstAnswer == AnswersSelected.firstAnswer ||
    options[0].answer == false && options[0].firstAnswer == AnswersSelected.unselected) {
      if (options[1].answer == true && options[1].secondAnswer == AnswersSelected.secondAnswer ||
      options[1].answer == false && options[1].secondAnswer == AnswersSelected.unselected){
        if (options[2].answer == true && options[2].thirdAnswer == AnswersSelected.thirdAnswer ||
        options[2].answer == false && options[2].thirdAnswer == AnswersSelected.unselected) {
          if (options[3].answer == true && options[3].fourthAnswer == AnswersSelected.fourthAnswer ||
              options[3].answer == false && options[3].fourthAnswer == AnswersSelected.unselected) {
            return true;
          } else {
            return false;
          }
        } else {
          return false;
        }
      } else {
        return false;
      }
    } else {
      return false;
    }
  }



}
