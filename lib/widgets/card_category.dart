import 'package:flutter/material.dart';

import '../theme/app_color.dart';
import '../theme/app_size.dart';

class CardCategory extends StatelessWidget {
  final String image;
  final String text;
  final GestureTapCallback function;
  final Color color;
  CardCategory(
      {required this.image,
      required this.text,
      required this.function,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: GestureDetector(
        onTap: function,
        child: Card(
          elevation: 0,
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(17),
            ),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    image,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    text,
                    style: TextStyle(
                      color: AppColor.defaultText,
                      fontSize: AppSize.textSizeSmall,
                    ),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
