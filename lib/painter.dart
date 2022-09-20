import 'package:flutter/material.dart';
import 'package:quizzler_mult/constants.dart';

class Painter extends CustomPainter {
  // Image.asset("assets/help_black_24dp.svg");
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..style = PaintingStyle.fill
      ..strokeWidth = 4.0
      ..color = kBlue;
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