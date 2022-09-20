import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:quizzler_mult/constants.dart';
import 'package:quizzler_mult/widgets/custom_button.dart';
import 'package:swipe/swipe.dart';
import '../db/question_bank.dart';
import 'articles_screen.dart';
import 'stats_screen.dart';
import '../models/answer.dart';
import '../models/screen_arguments.dart';
import '../components/painter.dart';
import '../components/option_area.dart';
import '../components/option_button.dart';



class QuizScreen extends StatefulWidget {
  const QuizScreen({Key? key}) : super(key: key);
  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {

  late QuestionBank questionBank;

  @override
  void initState() {
    questionBank = QuestionBank();
    super.initState();
  }
  var questionIndex = 0;

  Icon uncheckedButtonAnswer = OptionButton(icon: Icons.radio_button_unchecked, color: kBlue,);
  Icon checkedButtonAnswer = OptionButton(icon: Icons.radio_button_checked_outlined, color: Colors.white,);

  final optionCheckedColor = kBlue;
  final optionUncheckedColor = const Color(0xffffffff);

  final optionCheckedFontColor = Colors.white;
  final optionUncheckedFontColor = Colors.black87;

  AnswersSelected firstAnswer = AnswersSelected.unselected;
  AnswersSelected secondAnswer = AnswersSelected.unselected;
  AnswersSelected thirdAnswer = AnswersSelected.unselected;
  AnswersSelected fourthAnswer = AnswersSelected.unselected;


  final checkAnswersButton = CustomButton(
      background: kBlue,
      onPressed: (){},
      label: 'Check Answers',
      textColor: Colors.white
  );

  var finishButton;

  void isBlank() {
    if (firstAnswer == AnswersSelected.unselected &&
        secondAnswer == AnswersSelected.unselected &&
        thirdAnswer == AnswersSelected.unselected &&
        fourthAnswer == AnswersSelected.unselected) {
      setState(() {
        questionBank.questionBank[questionIndex].areUnselected = true;
      });

    } else {
      setState(() {
        questionBank.questionBank[questionIndex].areUnselected = false;
      });
    }
  }


  void writeAnswers() {
    questionBank.questionBank[questionIndex].options[0].firstAnswer = firstAnswer;
    questionBank.questionBank[questionIndex].options[1].secondAnswer = secondAnswer;
    questionBank.questionBank[questionIndex].options[2].thirdAnswer = thirdAnswer;
    questionBank.questionBank[questionIndex].options[3].fourthAnswer = fourthAnswer;

  }

  void readAnswers() {
    firstAnswer = questionBank.questionBank[questionIndex].options[0].firstAnswer!;
    secondAnswer = questionBank.questionBank[questionIndex].options[1].secondAnswer!;
    thirdAnswer = questionBank.questionBank[questionIndex].options[2].thirdAnswer!;
    fourthAnswer = questionBank.questionBank[questionIndex].options[3].fourthAnswer!;
  }
  double opacityLevel = 1.0;

  @override
  Widget build(BuildContext context) {
    void _changeOpacity() {
      setState(() => opacityLevel = opacityLevel == 0 ? 1.0 : 0.0);
    }

    finishButton = CustomButton(
        background: Colors.green,
        onPressed: () {
          writeAnswers();

          Navigator.pushNamed(
                      context,
                      StatsScreen.routeName,
                      arguments: ScreenArguments(
                          questionBank
                      ),
                    );
        },
        label: 'Finish Quiz',
        textColor: Colors.white,
    );

    // Show Dialog
    Future<void> _dialogBuilder(BuildContext context) {
      _changeOpacity;
      return showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: Colors.white12.withOpacity(0.2),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
            ),
            content: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
              child: SingleChildScrollView(
                child: Container(
                  height: 600.0,
                  width: 400.0,
                  margin: EdgeInsets.only(top: 30.0),
                  child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        childAspectRatio: 0.8,
                        crossAxisSpacing: 8,
                        mainAxisSpacing: 8,
                        maxCrossAxisExtent: 50,
                      ),
                      itemCount: questionBank.questionBank.length,
                      itemBuilder: (BuildContext context, i) {
                        return GestureDetector(
                          onTap: (){
                              setState(() {
                                isBlank();
                                writeAnswers();
                                questionIndex = i;
                                readAnswers();
                                Navigator.of(context).pop();
                              });
                          },
                        child: AnimatedOpacity(
                          opacity: opacityLevel,
                          duration: Duration(seconds: 3),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                questionBank.questionBank[i].areUnselected == true ? Colors.grey : Colors.green,
                                kLightGrayishBlue,
                              ],
                                stops: [
                                  0.6,
                                  1.0,
                                ]
                            ),
                            ),
                              height: 5.0,
                              width: 25.0,
                              child: Center(child: Text('${i + 1}', style: TextStyle(color: Colors.white,),)),
                            ),
                        ),
                        );
                      }
                  ),
                )
              ),
            ),
            actions: [
              TextButton(
                style: TextButton.styleFrom(
                  textStyle: Theme.of(context).textTheme.labelLarge,
                ),
                child: const Text('Close', style: TextStyle(color: Colors.white, fontSize: 16.0),),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.quiz),
            label: 'Quiz',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.article),
            label: 'Articles',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.question_answer),
            label: 'Answers',
          ),
        ],
        // currentIndex: _selectedIndex,
        // selectedItemColor: Colors.amber[800],
        // onTap: _onItemTapped,
        onTap: (index) {
          if (index == 1) {
            Navigator.of(context).pushNamed(ArticlesScreen.id);
          } else if (index == 2) {}
        },
      ),
      backgroundColor: kLightGrayishBlue,
      body: SafeArea(
        child: Column(
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

                  ],
                ),
              ),
            ),),
            Swipe(
              onSwipeLeft: () {
                setState(() {

                  if (questionIndex > 0) {
                    writeAnswers();
                    isBlank();
                    questionIndex = questionIndex - 1;
                    readAnswers();
                  }
                });
              },

              onSwipeRight: () {
                setState(() {

                  if (questionIndex < questionBank.questionBank.length - 1) {
                    writeAnswers();
                    isBlank();
                    questionIndex = questionIndex + 1;
                    readAnswers();
                  }
                },
                );
              },

              child: Container(
                height: MediaQuery.of(context).size.height * 0.60,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 20.0, bottom: 10.0),
                        child: Text(
                          '${questionIndex + 1}. ${questionBank.questionBank[questionIndex].text.toString()}',
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
                      OptionArea(
                          function: () {
                            setState(() {
                              firstAnswer = firstAnswer == AnswersSelected.unselected ? AnswersSelected.firstAnswer : AnswersSelected.unselected;
                              isBlank();
                            });
                          },
                          iconToggle: firstAnswer == AnswersSelected.unselected ? uncheckedButtonAnswer : checkedButtonAnswer,
                          questionText: '1. ${questionBank.questionBank[questionIndex].options[0].option}',
                          buttonColorToggle: firstAnswer == AnswersSelected.unselected ? optionUncheckedColor : optionCheckedColor,
                        buttonTextColorToggle: firstAnswer == AnswersSelected.unselected ? optionUncheckedFontColor : optionCheckedFontColor,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      OptionArea(
                        function: () {
                          setState(() {
                            secondAnswer = secondAnswer == AnswersSelected.unselected ? AnswersSelected.secondAnswer : AnswersSelected.unselected;
                            isBlank();
                          });
                        },
                        iconToggle: secondAnswer == AnswersSelected.unselected ? uncheckedButtonAnswer : checkedButtonAnswer,
                        questionText: '2. ${questionBank.questionBank[questionIndex].options[1].option}',
                        buttonColorToggle: secondAnswer == AnswersSelected.unselected ? optionUncheckedColor : optionCheckedColor,
                        buttonTextColorToggle: secondAnswer == AnswersSelected.unselected ? optionUncheckedFontColor : optionCheckedFontColor,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      OptionArea(
                        function: () {
                          setState(() {
                            thirdAnswer = thirdAnswer == AnswersSelected.unselected ? AnswersSelected.thirdAnswer : AnswersSelected.unselected;
                            isBlank();
                          });
                        },
                        iconToggle: thirdAnswer == AnswersSelected.unselected ? uncheckedButtonAnswer : checkedButtonAnswer,
                        questionText: '3. ${questionBank.questionBank[questionIndex].options[2].option}',
                        buttonColorToggle: thirdAnswer == AnswersSelected.unselected ? optionUncheckedColor : optionCheckedColor,
                        buttonTextColorToggle: thirdAnswer == AnswersSelected.unselected ? optionUncheckedFontColor : optionCheckedFontColor,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      OptionArea(
                        function: () {
                          setState(() {
                            fourthAnswer = fourthAnswer == AnswersSelected.unselected ? AnswersSelected.fourthAnswer : AnswersSelected.unselected;
                            isBlank();
                          });
                        },
                        iconToggle: fourthAnswer == AnswersSelected.unselected ? uncheckedButtonAnswer : checkedButtonAnswer,
                        questionText: '4. ${questionBank.questionBank[questionIndex].options[3].option}',
                        buttonColorToggle: fourthAnswer == AnswersSelected.unselected ? optionUncheckedColor : optionCheckedColor,
                        buttonTextColorToggle: fourthAnswer == AnswersSelected.unselected ? optionUncheckedFontColor : optionCheckedFontColor,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // TODO: Implement check answer later on
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 60.0,
                  margin: EdgeInsets.only(bottom: 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      questionIndex  == questionBank.questionBank.length - 1 ? finishButton : checkAnswersButton,
                    ],
                  ),
                ),

                Container(
                  height: 60.0,
                  margin: EdgeInsets.only(bottom: 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        color: kBlue,
                        child: TextButton(
                          onPressed: () {
                            // TODO: Implement Assignment Navigator
                            _dialogBuilder(context);

                          },
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              'Navigator',
                              style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
            ],
            ),
          ],
        ),
      ),
    );
  }
}








