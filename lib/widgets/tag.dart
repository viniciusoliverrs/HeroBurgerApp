import 'package:flutter/material.dart';

import '../theme/app_color.dart';
import '../theme/app_size.dart';

class Tag extends StatelessWidget {
  String text;
  Color fontColor;
  Color tagColor;
  IconData? icon;
  double? iconSize;
  Color? iconColor;
  double? padding;
  double fontSize;
  FontWeight fontWeight;
  Tag({
    required this.text,
    required this.fontColor,
    required this.tagColor,
    this.padding,
    this.icon,
    this.iconSize,
    this.iconColor,
    required this.fontSize,
    required this.fontWeight
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding ?? 0),
      decoration: BoxDecoration(
        color: tagColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: AppColor.primaryDark.withOpacity(0.5),
            blurRadius: 2,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Wrap(
        children: [
          icon != null
              ? Icon(
                  icon,
                  size: iconSize,
                  color: iconColor,
                )
              : Container(),
          const SizedBox(
            width: 10,
          ),
          Text(
            text,
            style: TextStyle(
              color: fontColor,
              fontSize: fontSize,
              fontWeight: fontWeight,
            ),
          ),
        ],
      ),
    );
  }
}
