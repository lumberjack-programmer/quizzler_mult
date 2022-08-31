import 'package:flutter/material.dart';
import 'package:quizzler_mult/db/entity/objectbox.dart';
import 'pages/statsPage.dart';
import 'pages/quizz_page.dart';

late ObjectBox objectbox;

Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();
  objectbox = await ObjectBox.create();

  runApp(const Quizzler());
}

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
        backgroundColor: Color(0xffF7F7F8),
        body: SafeArea(
          child: QuizPage(),
        ),
      ),
    );
  }
}















