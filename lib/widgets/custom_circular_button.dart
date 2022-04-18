import 'package:flutter/material.dart';

class CustomCircularButton extends StatelessWidget {
  IconData icon;
  Color iconColor;
  double iconSize;
  VoidCallback onPressed;
  Color borderColor;
  Color backgroundColor;
  double borderSize;
  CustomCircularButton({
    required this.icon,
    required this.onPressed,
    required this.borderColor,
    required this.borderSize,
    required this.iconColor,
    required this.iconSize,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        border: Border.all(
          color: borderColor, 
          width: borderSize,
        ),
        color: backgroundColor,
      ),
      child: IconButton(
        iconSize: iconSize,
        icon: Icon(
          icon,
          color: iconColor,
        ),
        onPressed: onPressed,
      ),
    );
  }
}
