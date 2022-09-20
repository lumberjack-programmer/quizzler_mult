import 'package:flutter/material.dart';

class ArticlesScreen extends StatefulWidget {
  static String id = '/articles';

  const ArticlesScreen({Key? key}) : super(key: key);

  @override
  State<ArticlesScreen> createState() => _ArticlesScreenState();
}

class _ArticlesScreenState extends State<ArticlesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff646FD4),
      ),
      body: Container(),
    );
  }
}
