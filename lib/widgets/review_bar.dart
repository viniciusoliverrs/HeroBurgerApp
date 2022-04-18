import 'package:flutter/material.dart';
import 'package:hero_burger_app/theme/app_color.dart';
import 'package:hero_burger_app/theme/app_size.dart';

class ReviewBar extends StatelessWidget {
  const ReviewBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Icon(
          Icons.star_outlined,
          size: AppSize.textSizeMedium,
          color: AppColor.orange,
        ),
        Text(
          "4.8 (258) Reviews",
          style: TextStyle(
            fontSize: AppSize.textSizeMedium,
            fontWeight: FontWeight.w300,
          ),

        ),
      ],
    );
  }
}
