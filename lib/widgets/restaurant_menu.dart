import 'package:flutter/material.dart';
import 'package:hero_burger_app/widgets/tag.dart';

import '../pages/menu_detail.dart';
import '../theme/app_color.dart';
import '../theme/app_size.dart';

class RestaurantMenu extends StatelessWidget {
  const RestaurantMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 5,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MenuDetail(),
                ),
              ),
              child: Card(
                elevation: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Image.asset("assets/images/burger.png"),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("Chack Donut Restaurant"),
                          Tag(
                            text: "Free Delivery",
                            fontColor: AppColor.primaryDark,
                            tagColor: AppColor.primaryLight,
                            icon: Icons.delivery_dining_outlined,
                            iconColor: AppColor.primaryDark,
                            iconSize: AppSize.textSizeSmall,
                            padding: 10,
                            fontSize: AppSize.textSizeSmall,
                            fontWeight: FontWeight.bold,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
