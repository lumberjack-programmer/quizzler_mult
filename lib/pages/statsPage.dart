import 'package:flutter/material.dart';
import '../painter.dart';
import '../screen_arguments.dart';


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
                  children: <Widget>[


                  Text('Correct answers: $correct', style: TextStyle(color: Colors.blue, fontSize: 18.0, fontWeight: FontWeight.bold),),
                  Text('Wrong answers: $wrong', style: TextStyle(color: Colors.blue, fontSize: 18.0, fontWeight: FontWeight.bold),),
                  Text('Total score: $percentageResult%', style: TextStyle(color: Colors.blue, fontSize: 18.0, fontWeight: FontWeight.bold),),


                  ],
                ),
              ),
              actions: <Widget>[
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
            // bottom: BorderSide(width: 16.0, color: Colors.lightBlue.shade900),
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

            Divider(color: Color(0xff646FD4)),
            Align(
              alignment: Alignment.centerLeft,
              child: Text('1. ${name.getOptionText(0)}', style: TextStyle(
                  color: name.checkAnswer(name.getId(), 0) ?
                  Colors.green : name.option1 == true ? Colors.red : Colors.black,
                  fontSize: 18.0,
              ),),
            ),


            const SizedBox(height: 4.0,),
            Divider(color: Color(0xff646FD4)),

            Align(
              alignment: Alignment.centerLeft,
              child: Text('2. ${name.getOptionText(1)}', style: TextStyle(
                  color: name.checkAnswer(name.getId(), 1) ?
                  Colors.green : name.option2 == true ? Colors.red : Colors.black,
                  fontSize: 18.0,
              ),),
            ),

            const SizedBox(height: 4.0,),
            Divider(color: Color(0xff646FD4)),

            Align(
            alignment: Alignment.centerLeft,
            child: Text('3. ${name.getOptionText(2)}', style: TextStyle(
                color: name.checkAnswer(name.getId(), 2) ?
                Colors.green : name.option3 == true ? Colors.red : Colors.black,
                fontSize: 18.0,
            ),),
          ),
            Divider(color: Color(0xff646FD4)),

            const SizedBox(height: 4.0,),

           Align(
          alignment: Alignment.centerLeft,
          child: Text('4. ${name.getOptionText(3)}', style: TextStyle(
              color: name.checkAnswer(name.getId(), 3) ?
              Colors.green : name.option4 == true ? Colors.red : Colors.black,
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
              // LayoutBuilder(builder: (_, constraints) => Container(
              //   color: Colors.white,
              //   height: 95.0,
              //   width: double.infinity,
              //   padding: EdgeInsets.zero,
              //   child: CustomPaint(
              //     painter: Painter(),
              //   ),
              // ),),


              // Container(
              //   padding: EdgeInsets.all(30.0),
              //   margin: EdgeInsets.all(5.0),
              //   decoration: BoxDecoration(
              //     border: Border(
              //       top: BorderSide(width: 2.0, color: Colors.lightBlue.shade900),
              //       bottom: BorderSide(width: 2.0, color: Colors.lightBlue.shade900),
              //       left: BorderSide(width: 2.0, color: Colors.lightBlue.shade900),
              //       right: BorderSide(width: 2.0, color: Colors.lightBlue.shade900),
              //     ),
              //     color: Colors.white,
              //   ),
              //   child: Column(
              //     children: [
              //       Text('Correct answers: $correct', style: TextStyle(color: Colors.blue, fontSize: 18.0, fontWeight: FontWeight.bold),),
              //       Text('Wrong answers: $wrong', style: TextStyle(color: Colors.blue, fontSize: 18.0, fontWeight: FontWeight.bold),),
              //       Text('Total score: $percentageResult%', style: TextStyle(color: Colors.blue, fontSize: 18.0, fontWeight: FontWeight.bold),),
              //     ],
              //   ),
              // ),





              Expanded(
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
      ),
    );
  }
}


