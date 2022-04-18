import 'package:flutter/material.dart';

import '../theme/app_color.dart';
import '../theme/app_size.dart';

class ButtonSearch extends StatelessWidget {
  const ButtonSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.55,
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: const Color(0xffEDECEB),
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(
            Icons.search,
            color: AppColor.primaryText,
            size: AppSize.iconSize,
          ),
          hintText: 'Search your',
          hintStyle: TextStyle(
            color: AppColor.secondaryText,
            fontSize: AppSize.textSizeMedium,
          ),
        ),
      ),
    );
  }
}
