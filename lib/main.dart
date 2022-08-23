import 'package:flutter/material.dart';
import 'question_bank.dart';
import 'statsPage.dart';
import 'answer.dart';



void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  const Quizzler({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        StatsPage.routeName: (context) => StatsPage(),
      },
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: QuizPage(),
        ),
      ),
    );
  }
}


class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {


  QuestionBank questionBank = QuestionBank();

  var questionIndex = 0;

  Icon uncheckedButtonAnswer = Icon(
    Icons.radio_button_unchecked,
    size: 28.0,
  );

  Icon checkedButtonAnswer = Icon(
    Icons.radio_button_checked_outlined,
    size: 28.0,
    color: Colors.white,
  );


  var optionCheckedColor = Color(0xff33cc33);
  var optionUncheckedColor = Color(0xffffffff);

  var optionCheckedFontColor = Colors.white;
  var optionUncheckedFontColor = Colors.black87;


  var option1 = false;
  var option2 = false;
  var option3 = false;
  var option4 = false;

  var questionNumberChecker = 0;

  List<Answer> userAnswers = [];


  var checkAnswersButton = Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15.0),
    ),
    color: Colors.blue,
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

  static const routeName = '/userAnswers';


  @override
  Widget build(BuildContext context) {


    finishButton = Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      color: Colors.green,
      child: TextButton(
        onPressed: () {


          userAnswers[questionIndex].option1 = option1;
          userAnswers[questionIndex].option2 = option2;
          userAnswers[questionIndex].option3 = option3;
          userAnswers[questionIndex].option4 = option4;


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
          color: Colors.white,
          height: 40.0,
          width: double.infinity,
          padding: EdgeInsets.zero,
          child: CustomPaint(
            painter: Painter(),
          ),
        ),),


        Container(
          height: 500.0,
          child: SingleChildScrollView(
            child: Column(
              children: [


                Container(
                  width: double.infinity,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: Colors.blue,
                    margin: EdgeInsets.only(left: 15.0, right: 15.0),
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Text(
                        questionBank.questionBank[questionIndex].text.toString(),
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: 20.0,
                ),

                Container(
                  width: double.infinity,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                     color: option1 ? optionCheckedColor : optionUncheckedColor,
                    margin: EdgeInsets.only(left: 15.0, right: 15.0),
                    child: TextButton(
                      onPressed: () {


                        setState(() {
                          option1 = !option1;
                        });


                      },
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10.0, vertical: 18.0),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 10.0),
                              child: option1 ? checkedButtonAnswer : uncheckedButtonAnswer,
                            ),
                            Container(
                              width: 280.0,
                              child: Text(
                                questionBank.questionBank[questionIndex].options[0].option,
                                style: TextStyle(
                                  fontSize: 15.0,
                                  color: option1 ? optionCheckedFontColor : optionUncheckedFontColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: 10.0,
                ),

                Container(
                  width: double.infinity,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: option2 ? optionCheckedColor : optionUncheckedColor,
                    margin: EdgeInsets.only(left: 15.0, right: 15.0),
                    child: TextButton(
                      onPressed: () {

                        setState(() {
                          option2 = !option2;
                        });

                      },
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10.0, vertical: 18.0),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 10.0),
                              child: option2 ? checkedButtonAnswer : uncheckedButtonAnswer,
                            ),
                            Container(
                              width: 280.0,
                              child: Text(
                                questionBank.questionBank[questionIndex].options[1].option,
                                style: TextStyle(
                                  fontSize: 15.0,
                                  color: option2 ? optionCheckedFontColor : optionUncheckedFontColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: 10.0,
                ),

                Container(
                  width: double.infinity,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: option3 ? optionCheckedColor : optionUncheckedColor,
                    margin: EdgeInsets.only(left: 15.0, right: 15.0),
                    child: TextButton(
                      onPressed: () {

                        setState(() {
                          option3 = !option3;
                        });


                      },
                      child: Padding(
                        padding:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 18.0),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 10.0),
                              child: option3 ? checkedButtonAnswer : uncheckedButtonAnswer,
                            ),
                            Container(
                              width: 280.0,
                              child: Text(
                                questionBank.questionBank[questionIndex].options[2].option,
                                style: TextStyle(
                                  fontSize: 15.0,
                                  color: option3 ? optionCheckedFontColor : optionUncheckedFontColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: 10.0,
                ),

                Container(
                  width: double.infinity,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: option4 ? optionCheckedColor : optionUncheckedColor,
                    margin: EdgeInsets.only(left: 15.0, right: 15.0),
                    child: TextButton(
                      onPressed: () {


                        setState(() {
                          option4 = !option4;
                        });


                      },
                      child: Padding(
                        padding:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 18.0),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 10.0),
                              child: option4 ? checkedButtonAnswer : uncheckedButtonAnswer,
                            ),
                            Container(
                              width: 280.0,
                              child: Text(
                                questionBank.questionBank[questionIndex].options[3].option,
                                style: TextStyle(
                                  fontSize: 15.0,
                                  color: option4 ? optionCheckedFontColor : optionUncheckedFontColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),

        // Expanded(child:Container()),


        Container(
          width: double.infinity,
          height: 80.0,
          margin: EdgeInsets.only(bottom: 10.0),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(35.0),
            ),
            color: Color(0xffffffff),
            margin: EdgeInsets.only(left: 15.0, right: 15.0),
            child: Padding(
              padding:
              EdgeInsets.symmetric(horizontal: 18.0, vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [


                  Container(
                      child: TextButton(
                        onPressed: () {

                          setState(() {
                            if (questionIndex > 0) {

                              print('BACK');

                              print('questionNumberChecker ${questionNumberChecker}');
                              print('questionIndex ${questionIndex}');



                              userAnswers[questionIndex].option1 = option1;
                              userAnswers[questionIndex].option2 = option2;
                              userAnswers[questionIndex].option3 = option3;
                              userAnswers[questionIndex].option4 = option4;



                              questionIndex = questionIndex - 1;

                              print('questionIndex: ${questionIndex}');

                              option1 = userAnswers[questionIndex].option1;
                              option2 = userAnswers[questionIndex].option2;
                              option3 = userAnswers[questionIndex].option3;
                              option4 = userAnswers[questionIndex].option4;

                            }


                          });
                        },
                        style: ButtonStyle(
                          overlayColor: MaterialStateProperty.all(Colors.transparent),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.arrow_back_ios),
                            Text(
                              'Back',
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.black87,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),


                  questionIndex  == questionBank.questionBank.length - 1 ? finishButton : checkAnswersButton,


                  Container(
                    child: TextButton(
                      style: ButtonStyle(
                        overlayColor: MaterialStateProperty.all(Colors.transparent),
                      ),
                      onPressed: () {

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
                                correctUncorrectOptions: questionBank.questionBank[questionIndex].options
                              ));

                              questionNumberChecker = questionNumberChecker + 1;

                            } else {

                              userAnswers[questionIndex].option1 = option1;
                              userAnswers[questionIndex].option2 = option2;
                              userAnswers[questionIndex].option3 = option3;
                              userAnswers[questionIndex].option4 = option4;

                            }


                            //============= END Previous Question  ====================

                            questionIndex = questionIndex + 1;


                            print('questionNumberChecker ${questionNumberChecker}');
                            print('questionIndex ${questionIndex}');

                            option1 = false;
                            option2 = false;
                            option3 = false;
                            option4 = false;


                            if (questionNumberChecker > questionIndex ) {


                              print('Next Button: questionNumberChecker > questionIndex');
                              print('questionNumberChecker ${questionNumberChecker}');
                              print('questionIndex ${questionIndex}');

                                option1 = userAnswers[questionIndex].option1;
                                option2 = userAnswers[questionIndex].option2;
                                option3 = userAnswers[questionIndex].option3;
                                option4 = userAnswers[questionIndex].option4;


                            } else if (questionNumberChecker == questionIndex ) {

                              print('Next Button: saving...');
                              print('questionNumberChecker ${questionNumberChecker}');
                              print('questionIndex ${questionIndex}');

                              userAnswers.add(Answer(
                                  id: questionIndex,
                                  text: questionBank.questionBank[questionIndex].text.toString(),
                                  option1: option1,
                                  option2: option2,
                                  option3: option3,
                                  option4: option4,
                                correctUncorrectOptions: questionBank.questionBank[questionIndex].options
                              ));


                              print('questionIndex: ${questionIndex}');

                              questionNumberChecker = questionNumberChecker + 1;

                            }

                              }

                          }


                        );

                      },
                      child: Row(
                        children: [
                          Text(
                            'Next',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.black87,
                            ),
                          ),

                          Icon(Icons.arrow_forward_ios)

                        ],
                      ),
                    ),
                  ),


                ],
              ),
            ),
          ),
        ),

      ],
    );
  }
}

class Painter extends CustomPainter {


  // Image.asset("assets/help_black_24dp.svg");

  @override
  void paint(Canvas canvas, Size size) {
      final paint = Paint()
          ..style = PaintingStyle.fill
          ..strokeWidth = 4.0
          ..color = Colors.blue;


      canvas.drawOval(Rect.fromLTWH(-85, -160, 580, 250), paint);


      final textStyle = TextStyle(
        color: Colors.white,
        fontSize: 20,
      );
      final textSpan = TextSpan(
        text: 'SAP Commerce Cloud',
        style: textStyle,
      );
      final textPainter = TextPainter(
        text: textSpan,
        textDirection: TextDirection.ltr,
      );
      textPainter.layout(
        minWidth: 0,
        maxWidth: size.width,
      );
      final offset = Offset(30, 10);
      textPainter.paint(canvas, offset);



      // canvas.drawImage(Image.asset("assets/help_black_24dp.svg"),  Offset(120, 10), paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }

}


class ScreenArguments {
  final List<Answer> userAnswers;

  int length = 0;
  int correct = 0;
  int wrong = 0;

  ScreenArguments(this.userAnswers);


}







