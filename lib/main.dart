import 'package:flutter/material.dart';
import 'package:quizzler_mult/screens/articles_screen.dart';
import 'package:quizzler_mult/screens/stats_screen.dart';
import 'constants.dart';
import 'screens/quizz_screen.dart';


void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  const Quizzler({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        StatsScreen.routeName: (context) => StatsScreen(),
        ArticlesScreen.id: (context) => ArticlesScreen(),
      },
      home: QuizScreen(),

    );
  }
}















