import 'package:flutter/material.dart';

import '../theme/app_color.dart';
import '../theme/app_size.dart';
import 'card_category.dart';

class CarouselCategories extends StatelessWidget {
  final List<Widget> _listCardCategories = [
    CardCategory(
        text: "All",
        image: "assets/images/dinner.png",
        function: () {},
        color: AppColor.primaryDark),
    CardCategory(
        text: "Hot Dog",
        image: "assets/images/megan.png",
        function: () {},
        color: AppColor.orange),
    CardCategory(
        text: "Burgon",
        image: "assets/images/pasta.png",
        function: () {},
        color: AppColor.primaryDark),
    CardCategory(
        text: "Burgon",
        image: "assets/images/pasta.png",
        function: () {},
        color: AppColor.primaryDark),
    CardCategory(
        text: "Burgon",
        image: "assets/images/pasta.png",
        function: () {},
        color: AppColor.orange),
  ];
  CarouselCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Categories",
              style: TextStyle(
                color: AppColor.primaryDark,
                fontSize: AppSize.textSizeMedium,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text("See All",
                  style: TextStyle(
                    color: AppColor.primaryDark,
                    fontSize: AppSize.textSizeSmall,
                    fontWeight: FontWeight.normal,
                  )),
            ),
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.08,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: _listCardCategories.length,
            itemBuilder: (context, index) {
              return _listCardCategories[index];
            },
          ),
        ),
      ],
    );
  }
}
