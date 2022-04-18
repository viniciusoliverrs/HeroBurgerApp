import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  String text;
  VoidCallback? function;
  Color? fontColor;
  double? fontSize;
  Color? colorButton;
  CustomButton({
    required this.text,
    required this.function,
    required this.fontColor,
    required this.fontSize,
    required this.colorButton,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: function,
      child: Text(
        text,
        style: TextStyle(
          color: fontColor,
          fontSize: fontSize,
        ),
      ),
      style: ElevatedButton.styleFrom(
        primary: colorButton,
      ),
    );
  }
}
