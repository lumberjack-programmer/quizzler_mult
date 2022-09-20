import 'package:flutter/material.dart';


class OptionArea extends StatelessWidget {
  OptionArea({
    required this.function,
    required this.iconToggle,
    required this.questionText,
    required this.buttonColorToggle,
    required this.buttonTextColorToggle});


  final VoidCallback function;
  final Icon iconToggle;
  final String questionText;
  final Color buttonColorToggle;
  final Color buttonTextColorToggle;


  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.infinity,
      child: Container(
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(35.0),
            side: BorderSide(
              color: Color(0xffebe8e8),
            ),
          ),
          color: buttonColorToggle,
          margin: EdgeInsets.only(left: 15.0, right: 15.0),
          child: TextButton(
            onPressed: function,
            child: Padding(
              padding:
              EdgeInsets.symmetric(horizontal: 10.0, vertical: 18.0),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 10.0),
                    child: iconToggle,
                  ),
                  Expanded(
                    child: Text(
                      questionText,
                      style: TextStyle(
                        fontSize: 15.0,
                        color: buttonTextColorToggle,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
