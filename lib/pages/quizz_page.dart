import 'package:flutter/material.dart';
import 'package:swipe/swipe.dart';
import '../question_bank.dart';
import 'statsPage.dart';
import '../answer.dart';
import '../screen_arguments.dart';
import '../painter.dart';
import '../components/option_design.dart';



class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  static const routeName = '/userAnswers';

  final QuestionBank questionBank = QuestionBank();

  var questionIndex = 0;

  Icon uncheckedButtonAnswer = Icon(
    Icons.radio_button_unchecked,
    size: 28.0,
    color: Color(0xff646FD4),
  );
  Icon checkedButtonAnswer = Icon(
    Icons.radio_button_checked_outlined,
    size: 28.0,
    color: Colors.white,
  );

  final optionCheckedColor = const Color(0xff646FD4);
  final optionUncheckedColor = const Color(0xffffffff);

  final optionCheckedFontColor = Colors.white;
  final optionUncheckedFontColor = Colors.black87;

  var option1 = false;
  var option2 = false;
  var option3 = false;
  var option4 = false;

  AnswersSelected firstAnswer = AnswersSelected.unselected;
  AnswersSelected secondAnswer = AnswersSelected.unselected;
  AnswersSelected thirdAnswer = AnswersSelected.unselected;
  AnswersSelected fourthAnswer = AnswersSelected.unselected;

  var questionNumberChecker = 0;

  final List<Answer> userAnswers = [];


  final checkAnswersButton = Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15.0),
    ),
    color: Color(0xff646FD4),
    child: TextButton(
      onPressed: () {},
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Text(
          'Check Answers',
          style: TextStyle(
            fontSize: 15.0,
            color: Colors.white,
          ),
        ),
      ),
    ),
  );

  var finishButton;



  void getOptions() {
    option1 = userAnswers[questionIndex].option1;
    option2 = userAnswers[questionIndex].option2;
    option3 = userAnswers[questionIndex].option3;
    option4 = userAnswers[questionIndex].option4;

    firstAnswer = userAnswers[questionIndex].firstAnswer;
    secondAnswer = userAnswers[questionIndex].secondAnswer;
    thirdAnswer = userAnswers[questionIndex].thirdAnswer;
    fourthAnswer = userAnswers[questionIndex].fourthAnswer;
  }
  void writeOptions() {
    userAnswers[questionIndex].option1 = option1;
    userAnswers[questionIndex].option2 = option2;
    userAnswers[questionIndex].option3 = option3;
    userAnswers[questionIndex].option4 = option4;

    userAnswers[questionIndex].firstAnswer = firstAnswer;
    userAnswers[questionIndex].secondAnswer = secondAnswer;
    userAnswers[questionIndex].thirdAnswer = thirdAnswer;
    userAnswers[questionIndex].fourthAnswer = fourthAnswer;
  }
  void resetOptions() {
    option1 = false;
    option2 = false;
    option3 = false;
    option4 = false;
    firstAnswer = AnswersSelected.unselected;
    secondAnswer = AnswersSelected.unselected;
    thirdAnswer = AnswersSelected.unselected;
    fourthAnswer = AnswersSelected.unselected;
  }


  @override
  Widget build(BuildContext context) {


    finishButton = Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      color: Colors.green,
      child: TextButton(
        onPressed: () {
          writeOptions();
          Navigator.pushNamed(
            context,
            StatsPage.routeName,
            arguments: ScreenArguments(
                userAnswers
            ),
          );
        },
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            'Finish Quizz',
            style: TextStyle(
              fontSize: 15.0,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );



    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        LayoutBuilder(builder: (_, constraints) => Container(
          color: Color(0xffF7F7F8),
          height: 105.0,
          width: double.infinity,
          padding: EdgeInsets.zero,
          child: CustomPaint(
            painter: Painter(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //=================== Buttons for testing ===================//
                GestureDetector(
                  child: Icon(Icons.arrow_back_ios),

                  onTap: () {

                    setState(() {
                      if (questionIndex > 0) {
                        print('BACK');
                        writeOptions();

                        questionIndex = questionIndex - 1;
                        print('questionIndex: ${questionIndex}');
                        getOptions();

                        //========================================================== OK

                      }
                    });


                  },

                ),


                GestureDetector(
                  child: Icon(Icons.arrow_forward_ios),

                  onTap: () {


                    setState(() {


                      if (questionIndex < questionBank.questionBank.length - 1) {
                        //============= START Previous Question  ====================
                        if (questionNumberChecker == questionIndex) {
                          print('Saving...');
                          userAnswers.add(Answer(
                              id: questionIndex,
                              text: questionBank.questionBank[questionIndex].text.toString(),
                              option1: option1,
                              option2: option2,
                              option3: option3,
                              option4: option4,
                              correctUncorrectOptions: questionBank.questionBank[questionIndex].options,
                              firstAnswer: firstAnswer,
                              secondAnswer: secondAnswer,
                              thirdAnswer: thirdAnswer,
                              fourthAnswer: fourthAnswer
                          ));

                          questionNumberChecker = questionNumberChecker + 1;
                        } else {
                          writeOptions();

                        }
                        //============= END Previous Question  ====================
                        questionIndex = questionIndex + 1;
                        print('questionNumberChecker ${questionNumberChecker}');
                        print('questionIndex ${questionIndex}');

                        resetOptions();

                        if (questionNumberChecker > questionIndex ) {
                          print('Next Button: questionNumberChecker > questionIndex');
                          print('questionNumberChecker ${questionNumberChecker}');
                          print('questionIndex ${questionIndex}');

                          getOptions();

                          print('FIRST: ${userAnswers[questionIndex].firstAnswer.toString()}');
                          print('SECOND: ${userAnswers[questionIndex].secondAnswer.toString()}');
                          print('THIRD: ${userAnswers[questionIndex].thirdAnswer.toString()}');
                          print('FOURTH: ${userAnswers[questionIndex].fourthAnswer.toString()}');

                        } else if (questionNumberChecker == questionIndex ) {
                          print('Next Button: saving...');
                          // print('questionNumberChecker ${questionNumberChecker}');
                          // print('questionIndex ${questionIndex}');
                          userAnswers.add(Answer(
                              id: questionIndex,
                              text: questionBank.questionBank[questionIndex].text.toString(),
                              option1: option1,
                              option2: option2,
                              option3: option3,
                              option4: option4,
                              correctUncorrectOptions: questionBank.questionBank[questionIndex].options,
                              firstAnswer: firstAnswer,
                              secondAnswer: secondAnswer,
                              thirdAnswer: thirdAnswer,
                              fourthAnswer: fourthAnswer
                          ));
                          print('questionIndex: ${questionIndex}');
                          questionNumberChecker = questionNumberChecker + 1;
                        }
                      }
                    },);



                  },
                ),
                //=================== END Buttons for testing ===================//
              ],
            ),
          ),
        ),),
        Swipe(
          onSwipeLeft: () {
            setState(() {
              if (questionIndex > 0) {
                print('BACK');
                writeOptions();
                questionIndex = questionIndex - 1;
                print('questionIndex: ${questionIndex}');
                getOptions();
              }
            });
          },

          onSwipeRight: () {
            setState(() {
              if (questionIndex < questionBank.questionBank.length - 1) {
                //============= START Previous Question  ====================
                if (questionNumberChecker == questionIndex) {
                  print('Saving...');
                  userAnswers.add(Answer(
                      id: questionIndex,
                      text: questionBank.questionBank[questionIndex].text.toString(),
                      option1: option1,
                      option2: option2,
                      option3: option3,
                      option4: option4,
                      correctUncorrectOptions: questionBank.questionBank[questionIndex].options,
                      firstAnswer: firstAnswer,
                      secondAnswer: secondAnswer,
                      thirdAnswer: thirdAnswer,
                      fourthAnswer: fourthAnswer
                  ));
                  questionNumberChecker = questionNumberChecker + 1;
                } else {
                  writeOptions();
                }
                //============= END Previous Question  ====================
                questionIndex = questionIndex + 1;
                resetOptions();
                if (questionNumberChecker > questionIndex ) {
                  getOptions();
                } else if (questionNumberChecker == questionIndex ) {
                  print('Next Button: saving...');
                  userAnswers.add(Answer(
                      id: questionIndex,
                      text: questionBank.questionBank[questionIndex].text.toString(),
                      option1: option1,
                      option2: option2,
                      option3: option3,
                      option4: option4,
                      correctUncorrectOptions: questionBank.questionBank[questionIndex].options,
                      firstAnswer: firstAnswer,
                      secondAnswer: secondAnswer,
                      thirdAnswer: thirdAnswer,
                      fourthAnswer: fourthAnswer
                  ));
                  questionNumberChecker = questionNumberChecker + 1;
                }
              }
            },);
          },

          child: Container(
            height: MediaQuery.of(context).size.height * 0.70,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  Container(
                    padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 20.0, bottom: 10.0),
                    child: Text(
                      questionBank.questionBank[questionIndex].text.toString(),
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.black87,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  DesignOption(
                      function: () {
                        setState(() {
                          option1 = !option1;
                          firstAnswer = firstAnswer == AnswersSelected.unselected ? AnswersSelected.firstAnswer : AnswersSelected.unselected;

                        });
                      },
                      iconToggle: option1 ? checkedButtonAnswer : uncheckedButtonAnswer,
                      questionText: '1. ${questionBank.questionBank[questionIndex].options[0].option}',
                      buttonColorToggle: option1 ? optionCheckedColor : optionUncheckedColor,
                    buttonTextColorToggle: option1 ? optionCheckedFontColor : optionUncheckedFontColor,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  DesignOption(
                    function: () {
                      setState(() {
                        option2 = !option2;
                        secondAnswer = secondAnswer == AnswersSelected.unselected ? AnswersSelected.secondAnswer : AnswersSelected.unselected;

                      });
                    },
                    iconToggle: option2 ? checkedButtonAnswer : uncheckedButtonAnswer,
                    questionText: '2. ${questionBank.questionBank[questionIndex].options[1].option}',
                    buttonColorToggle: option2 ? optionCheckedColor : optionUncheckedColor,
                    buttonTextColorToggle: option2 ? optionCheckedFontColor : optionUncheckedFontColor,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  DesignOption(
                    function: () {
                      setState(() {
                        option3 = !option3;
                        thirdAnswer = thirdAnswer == AnswersSelected.unselected ? AnswersSelected.thirdAnswer : AnswersSelected.unselected;

                      });
                    },
                    iconToggle: option3 ? checkedButtonAnswer : uncheckedButtonAnswer,
                    questionText: '3. ${questionBank.questionBank[questionIndex].options[2].option}',
                    buttonColorToggle: option3 ? optionCheckedColor : optionUncheckedColor,
                    buttonTextColorToggle: option3 ? optionCheckedFontColor : optionUncheckedFontColor,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  DesignOption(
                    function: () {
                      setState(() {
                        option4 = !option4;
                        fourthAnswer = fourthAnswer == AnswersSelected.unselected ? AnswersSelected.fourthAnswer : AnswersSelected.unselected;
                      });
                    },
                    iconToggle: option4 ? checkedButtonAnswer : uncheckedButtonAnswer,
                    questionText: '4. ${questionBank.questionBank[questionIndex].options[3].option}',
                    buttonColorToggle: option4 ? optionCheckedColor : optionUncheckedColor,
                    buttonTextColorToggle: option4 ? optionCheckedFontColor : optionUncheckedFontColor,
                  ),
                ],
              ),
            ),
          ),
        ),

        Container(
          width: double.infinity,
          height: 80.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              questionIndex  == questionBank.questionBank.length - 1 ? finishButton : checkAnswersButton,
            ],
          ),
        ),
      ],
    );
  }
}




