import 'package:flutter/material.dart';
import 'main.dart';
import 'answer.dart';
import 'question_bank.dart';






class StatsPage extends StatefulWidget {

   static const routeName = '/extractArguments';

  @override
  State<StatsPage> createState() => _StatsPageState();
}

class _StatsPageState extends State<StatsPage> {

  int length = 0;
  int correct = 0;
  int wrong = 0;

  String totalPercentage = '';

  int allCorrectAnswers = 0;

  int percentageResult = 0;

  int convertToPercentage(int correct, int max) {
    wrong = max - correct;
   return (correct * 100) ~/ max;
  }



  @override
  Widget build(BuildContext context) {

   final argsUserAnswers = ModalRoute.of(context)!.settings.arguments as ScreenArguments;

   if (allCorrectAnswers == 0) {
     for (var name in argsUserAnswers.userAnswers) {

       setState(() {

         if (name.option1 ==
             name.getCorrectUncorrectOptions()[0].answer && name.getCorrectUncorrectOptions()[0].answer == true) {
           correct = correct + 1;
           length = length + 1;
         }

         if (name.option2 ==
             name.getCorrectUncorrectOptions()[1].answer && name.getCorrectUncorrectOptions()[1].answer == true) {
           correct = correct + 1;
           length = length + 1;
         }

         if (name.option3 ==
             name.getCorrectUncorrectOptions()[2].answer && name.getCorrectUncorrectOptions()[2].answer == true) {
           correct = correct + 1;
           length = length + 1;
         }

         if (name.option4 ==
             name.getCorrectUncorrectOptions()[3].answer && name.getCorrectUncorrectOptions()[3].answer == true) {
           correct = correct + 1;
           length = length + 1;
         }


         if (name.getCorrectUncorrectOptions()[0].answer == true) {
           allCorrectAnswers = allCorrectAnswers + 1;
         }

         if (name.getCorrectUncorrectOptions()[1].answer == true) {
           allCorrectAnswers = allCorrectAnswers + 1;
         }
         if (name.getCorrectUncorrectOptions()[2].answer == true) {
           allCorrectAnswers = allCorrectAnswers + 1;
         }
         if (name.getCorrectUncorrectOptions()[3].answer == true) {
           allCorrectAnswers = allCorrectAnswers + 1;
         }


       });
     }

     setState(() {

       percentageResult = convertToPercentage(correct, allCorrectAnswers);

     });

   }

   print('Correct: $correct');
   print('Wrong: $wrong');
   print('Length: $length');
   print('All: $allCorrectAnswers');
   print('Percentage: $percentageResult');


    List<Widget> widgets = argsUserAnswers.userAnswers.map((name) => Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
        side: BorderSide(
          color: Colors.black45,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(width: 16.0, color: Colors.lightBlue.shade600),
            bottom: BorderSide(width: 16.0, color: Colors.lightBlue.shade900),
          ),
          color: Colors.white,
        ),
        margin: EdgeInsets.all(18.0),
        child: Column(
          children: [


            const SizedBox(height: 8.0,),

            Align(alignment: Alignment.centerLeft,
                child: Text(name.text, style: TextStyle(color: Colors.blue, fontSize: 18.0, fontWeight: FontWeight.bold),)),

            SizedBox(height: 15.0,),


            Align(
              alignment: Alignment.centerLeft,
              child: Text(name.getOptionText(0), style: TextStyle(
                  color: name.checkAnswer(name.getId(), 0) ?
                  Colors.green : name.option1 == true ? Colors.red : Colors.black,
                  fontSize: 18.0,
              ),),
            ),


            const SizedBox(height: 4.0,),


            Align(
              alignment: Alignment.centerLeft,
              child: Text(name.getOptionText(1), style: TextStyle(
                  color: name.checkAnswer(name.getId(), 1) ?
                  Colors.green : name.option2 == true ? Colors.red : Colors.black,
                  fontSize: 18.0,
              ),),
            ),

            const SizedBox(height: 4.0,),

            Align(
            alignment: Alignment.centerLeft,
            child: Text(name.getOptionText(2), style: TextStyle(
                color: name.checkAnswer(name.getId(), 2) ?
                Colors.green : name.option3 == true ? Colors.red : Colors.black,
                fontSize: 18.0,
            ),),
          ),

            const SizedBox(height: 4.0,),

           Align(
          alignment: Alignment.centerLeft,
          child: Text(name.getOptionText(3), style: TextStyle(
              color: name.checkAnswer(name.getId(), 3) ?
              Colors.green : name.option4 == true ? Colors.red : Colors.black,
              fontSize: 18.0,
          ),),
        ),

            const SizedBox(height: 30.0,),

          ],
        ),
      ),
    ),).toList();


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(children: [
            LayoutBuilder(builder: (_, constraints) => Container(
              color: Colors.white,
              height: 95.0,
              width: double.infinity,
              padding: EdgeInsets.zero,
              child: CustomPaint(
                painter: Painter(),
              ),
            ),),


            SizedBox(height: 20.0,),

            Container(
              padding: EdgeInsets.all(30.0),
              margin: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(width: 2.0, color: Colors.lightBlue.shade900),
                  bottom: BorderSide(width: 2.0, color: Colors.lightBlue.shade900),
                  left: BorderSide(width: 2.0, color: Colors.lightBlue.shade900),
                  right: BorderSide(width: 2.0, color: Colors.lightBlue.shade900),
                ),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Text('Correct answers: $correct', style: TextStyle(color: Colors.blue, fontSize: 18.0, fontWeight: FontWeight.bold),),
                  Text('Wrong answers: $wrong', style: TextStyle(color: Colors.blue, fontSize: 18.0, fontWeight: FontWeight.bold),),
                  Text('Total score: $percentageResult%', style: TextStyle(color: Colors.blue, fontSize: 18.0, fontWeight: FontWeight.bold),),
                ],
              ),
            ),



            SizedBox(height: 25.0,),

            Container(
                height: 520.0,
                padding: EdgeInsets.only(left: 5.0, right: 5.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: widgets,

                  ),
                ),
              ),

          ],
              ),
        ),
      ),
    );
  }
}


