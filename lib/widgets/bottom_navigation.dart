import 'package:flutter/material.dart';

import '../theme/app_color.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: const Icon(
            Icons.home_outlined,
          ),
          backgroundColor: AppColor.primaryDark,
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: const Icon(
            Icons.favorite_outlined,
          ),
          backgroundColor: AppColor.primaryDark,
          label: 'Favorite',
        ),
        BottomNavigationBarItem(
          icon: const Icon(
            Icons.shopping_cart_outlined,
          ),
          backgroundColor: AppColor.primaryDark,
          label: 'Cart',
        )
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: AppColor.orange,
      backgroundColor: AppColor.primaryLight,
      onTap: _onItemTapped,
    );
  }
}
