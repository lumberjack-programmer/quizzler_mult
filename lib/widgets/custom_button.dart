import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Color background;
  final VoidCallback onPressed;
  final String label;
  final Color textColor;


  CustomButton({
  required this.background,
  required this.onPressed,
  required this.label,
  required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      color: background,
      child: TextButton(
        onPressed: onPressed,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 15.0,
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}