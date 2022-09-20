import 'package:flutter/material.dart';

class OptionButton extends Icon {


  final Color? color;
  final IconData? icon;


  OptionButton({required this.icon, required this.color}) : super(icon, color: color, size: 28.0);

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      color: color,
    );
  }
}