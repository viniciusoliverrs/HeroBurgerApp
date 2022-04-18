import 'package:flutter/material.dart';
import 'package:hero_burger_app/theme/app_color.dart';
import 'package:hero_burger_app/theme/app_size.dart';
import 'package:hero_burger_app/widgets/button_search.dart';
import 'package:hero_burger_app/widgets/carousel_categories.dart';

import '../widgets/bottom_navigation.dart';
import '../widgets/restaurant_menu.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _notification = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryLight,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hey Vinícius",
                    style: TextStyle(
                        color: AppColor.secondaryText,
                        fontSize: AppSize.textSizeMedium,
                        fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    icon: Icon(
                      _notification
                          ? Icons.notifications_none
                          : Icons.notifications_off_outlined,
                      color: AppColor.primaryDark,
                      size: AppSize.iconSize,
                    ),
                    onPressed: () {
                      setState(() => _notification = !_notification);
                    },
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  "Hundry Today?",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: AppColor.primaryDark,
                    fontSize: AppSize.textSizeLarge,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Expanded(child: ButtonSearch()),
                  const SizedBox(
                    width: 30,
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColor.secondaryText,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.filter_alt_outlined,
                        color: AppColor.secondaryText,
                        size: AppSize.iconSize,
                      ),
                    ),
                  )
                ],
              ),
              CarouselCategories(),
              Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                  top: 20,
                  bottom: 15,
                ),
                child: Text(
                  "Open Restaurants",
                  style: TextStyle(
                      color: AppColor.primaryDark,
                      fontSize: AppSize.textSizeMedium,
                      fontWeight: FontWeight.bold,),
                ),
              ),
              const RestaurantMenu(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavigation(),
    );
  }
}
