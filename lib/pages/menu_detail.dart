import 'package:flutter/material.dart';
import 'package:hero_burger_app/theme/app_color.dart';
import 'package:hero_burger_app/theme/app_size.dart';
import 'package:hero_burger_app/widgets/custom_button.dart';
import 'package:hero_burger_app/widgets/custom_circular_button.dart';
import 'package:hero_burger_app/widgets/review_bar.dart';

import '../widgets/tag.dart';

class MenuDetail extends StatefulWidget {
  const MenuDetail({Key? key}) : super(key: key);

  @override
  State<MenuDetail> createState() => _MenuDetailState();
}

class _MenuDetailState extends State<MenuDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Image.asset(
                          "assets/images/burger.png",
                          width: MediaQuery.of(context).size.width,
                          fit: BoxFit.cover,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 20, left: 10, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomCircularButton(
                                iconColor: AppColor.primaryDark,
                                iconSize: AppSize.iconSize,
                                backgroundColor: AppColor.primaryLight,
                                icon: Icons.arrow_back,
                                borderColor: AppColor.primaryLight,
                                borderSize: 1,
                                onPressed: () => Navigator.of(context).pop(),
                              ),
                              CustomCircularButton(
                                iconColor: AppColor.primaryDark,
                                iconSize: AppSize.iconSize,
                                backgroundColor: AppColor.primaryLight,
                                icon: Icons.shopping_cart_outlined,
                                borderColor: AppColor.primaryLight,
                                borderSize: 1,
                                onPressed: () => print("Add to cart"),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Big Mad Burfer",
                            style: TextStyle(
                              color: AppColor.primaryDark,
                              fontSize: AppSize.textSizeLarge,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "\$80",
                            style: TextStyle(
                              color: AppColor.primaryDark,
                              fontSize: AppSize.textSizeLarge,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        "Chuck Donut Restaurant",
                        style: TextStyle(
                            color: AppColor.primaryDark,
                            fontSize: AppSize.textSizeMedium),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const ReviewBar(),
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
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Food Detail:",
                        style: TextStyle(
                            fontSize: AppSize.textSizeMedium,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Creative innovation xs. Apron availability urban synthetic petticoat wholesale ribbon textile. Measurement item craftmanship.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color: AppColor.primaryDark,
                          fontWeight: FontWeight.w300,
                          fontSize: AppSize.textSizeSmall,
                          wordSpacing: 0,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Burger Size:",
                        style: TextStyle(
                            fontSize: AppSize.textSizeMedium,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Wrap(
                      spacing: 5,
                      children: [
                        CustomButton(
                          text: "Small",
                          fontColor: AppColor.primaryLight,
                          fontSize: AppSize.textSizeMedium,
                          colorButton: AppColor.primaryDark,
                          function: () {},
                        ),
                        CustomButton(
                          text: "Medium",
                          fontColor: AppColor.primaryLight,
                          fontSize: AppSize.textSizeMedium,
                          colorButton: AppColor.primaryDark,
                          function: () {},
                        ),
                        CustomButton(
                          text: "Large",
                          fontColor: AppColor.primaryLight,
                          fontSize: AppSize.textSizeMedium,
                          colorButton: AppColor.primaryDark,
                          function: () {},
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "choose addition (bonus):",
                        style: TextStyle(
                          fontSize: AppSize.textSizeMedium,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Wrap(
                      spacing: 5,
                      children: [
                        CustomButton(
                          text: "Patato Cheap",
                          fontColor: AppColor.primaryLight,
                          fontSize: AppSize.textSizeSmall,
                          colorButton: AppColor.primaryDark,
                          function: () {},
                        ),
                        CustomButton(
                          text: "French Fries",
                          fontColor: AppColor.primaryLight,
                          fontSize: AppSize.textSizeSmall,
                          colorButton: AppColor.primaryDark,
                          function: () {},
                        ),
                        CustomButton(
                          text: "Corn On The",
                          fontColor: AppColor.primaryLight,
                          fontSize: AppSize.textSizeSmall,
                          colorButton: AppColor.primaryDark,
                          function: () {},
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomCircularButton(
                iconColor: AppColor.orange,
                iconSize: AppSize.iconSize,
                backgroundColor: AppColor.primaryLight,
                icon: Icons.favorite_outline,
                borderColor: AppColor.orange,
                borderSize: 1,
                onPressed: () {},
              ),
              const SizedBox(
                width: 70,
              ),
              Expanded(
                flex: 3,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        primary: AppColor.orange,
                        padding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 15)),
                    icon: Icon(
                      Icons.shopping_cart_outlined,
                      size: AppSize.iconSize,
                    ),
                    label: const Text("Add To Cart"),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
