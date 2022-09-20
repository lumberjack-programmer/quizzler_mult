import 'package:flutter/material.dart';
import 'package:quizzler_mult/models/answer.dart';
import 'package:quizzler_mult/constants.dart';
import '../components/painter.dart';
import '../models/screen_arguments.dart';


class StatsScreen extends StatefulWidget {

   static const routeName = '/extractArguments';

  @override
  State<StatsScreen> createState() => _StatsScreenState();
}

class _StatsScreenState extends State<StatsScreen> {

  int length = 0;
  int correct = 0;
  int wrong = 0;

  String totalPercentage = '';
  int allCorrectAnswers = 0;
  int percentageResult = 0;

  int convertToPercentage(int correct, int max) {
    wrong = max - correct + 1;
   return (correct * 100) ~/ max;
  }



  @override
  Widget build(BuildContext context) {
    final argsQuestionBank = ModalRoute.of(context)!.settings.arguments as ScreenArguments;

    Future<void> _showMyDialog() async {
      return showDialog<void>(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext context) {
          return Container(
            height: 400.0,
            child: AlertDialog(
              backgroundColor: Color(0xffF7F7F8),
              elevation: 6.0,
              title: const Text('Total Results'),
              content: SingleChildScrollView(
                child: ListBody(
                  children: [
                  Text('Correct answers: $correct', style: TextStyle(color: Colors.blue, fontSize: 18.0, fontWeight: FontWeight.bold),),
                  Text('Wrong answers: $wrong', style: TextStyle(color: Colors.blue, fontSize: 18.0, fontWeight: FontWeight.bold),),
                  Text('Total score: $percentageResult%', style: TextStyle(color: Colors.blue, fontSize: 18.0, fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
              actions: [
                TextButton(
                  child: const Text('Close'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          );
        },
      );
    }

   if (allCorrectAnswers == 0) {
     for (var question in argsQuestionBank.questionBank.questionBank) {
       setState(() {

       });
     }

     setState(() {
       percentageResult = convertToPercentage(correct,  argsQuestionBank.questionBank.questionBank.length - 1);
     });
   }

   print('Correct: $correct');
   print('Wrong: $wrong');
   print('Length: $length');
   print('All: $allCorrectAnswers');
   print('Percentage: $percentageResult');


    List<Widget> widgets = argsQuestionBank.questionBank.questionBank.map((question) => Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25.0),
        side: BorderSide(
          color: Colors.black45,
        ),
      ),
      child: Container(
        margin: EdgeInsets.all(30.0),
        child: Column(
          children: [
            Row(
              children: [
                question.allAnswersCorrect() ? Icon(Icons.check_circle, color: Colors.green, size: 25.0,) : Icon(Icons.close, color: Colors.red, size: 30.0,),
                SizedBox(
                  width: 20.0,
                ),
                Expanded(
                  child: Container(
                    height: 15.0,
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(width: 16.0, color: kBlue),
                        // bottom: BorderSide(width: 16.0, color: Colors.lightBlue.shade900),
                      ),
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15.0,),
            Align(alignment: Alignment.centerLeft,
                child: Text(question.text, style: TextStyle(color: Colors.blue, fontSize: 18.0, fontWeight: FontWeight.bold),)),
            SizedBox(height: 15.0,),
            Divider(color: kBlue),
            Align(
              alignment: Alignment.centerLeft,
              child: Text('1. ${question.options[0].option}', style: TextStyle(
                  color: question.checkAnswers(0) ?
                  Colors.green : question.options[0].firstAnswer == AnswersSelected.firstAnswer ? Colors.red : Colors.black,
                  fontSize: 18.0,
              ),),
            ),
            const SizedBox(height: 4.0,),
            Divider(color: Color(0xff646FD4)),
            Align(
              alignment: Alignment.centerLeft,
              child: Text('2. ${question.options[1].option}', style: TextStyle(
                  color: question.checkAnswers(1) ?
                  Colors.green : question.options[1].secondAnswer == AnswersSelected.secondAnswer ? Colors.red : Colors.black,
                  fontSize: 18.0,
              ),),
            ),
            const SizedBox(height: 4.0,),
            Divider(color: Color(0xff646FD4)),
            Align(
            alignment: Alignment.centerLeft,
            child: Text('3. ${question.options[2].option}', style: TextStyle(
                color: question.checkAnswers(2) ?
                Colors.green : question.options[2].thirdAnswer == AnswersSelected.thirdAnswer ? Colors.red : Colors.black,
                fontSize: 18.0,
            ),),
          ),
            Divider(color: Color(0xff646FD4)),
            const SizedBox(height: 4.0,),
           Align(
          alignment: Alignment.centerLeft,
          child: Text('4. ${question.options[3].option}', style: TextStyle(
              color: question.checkAnswers(3) ?
              Colors.green : question.options[3].thirdAnswer == AnswersSelected.thirdAnswer ? Colors.red : Colors.black,
              fontSize: 18.0,
          ),),
        ),
            Divider(color: Color(0xff646FD4)),
            const SizedBox(height: 30.0,),
          ],
        ),
      ),
    ),).toList();
    return MaterialApp(
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            title: Text('Results'),
          backgroundColor: kBlue,
          actions: [
            IconButton(onPressed: () {
              _showMyDialog();
            }, icon: Icon(Icons.more_vert))
          ],
        ),
        backgroundColor: Color(0xffF7F7F8),
        body: Container(
          margin: EdgeInsets.only(top: 10.0),
          child: SafeArea(
            child: Column(children: [
              Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.0),
                      child: Column(
                        children: widgets,
                      ),
                    ),
                  ),
                ),
            ],
                ),
          ),
        ),
      ),
    );
  }
}


class QuestionResultCard {
  int number;
  String questionText;
  bool check;
  bool nameOption;
  QuestionResultCard({
    required this.questionText,
    required this.check,
    required this.number,
    required this.nameOption,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text('${number + 1}. ${questionText}', style: TextStyle(
        color: check ?
        Colors.green : nameOption == true ? Colors.red : Colors.black,
        fontSize: 18.0,
      ),),
    );
  }
}



