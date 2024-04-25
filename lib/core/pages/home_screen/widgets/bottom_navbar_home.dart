import 'package:flutter/material.dart';
import 'package:nusatech_test_apps/core/style/color.dart';
import 'package:nusatech_test_apps/core/utils/list_controlller.dart';

class BottomNavBarWidget extends StatelessWidget {
  const BottomNavBarWidget({
    super.key,
    required int bottomNavIndex,
  }) : _bottomNavIndex = bottomNavIndex;

  final int _bottomNavIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 10)],
      ),
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: cColorDarkBlue,
        items: bottomNavbarItems,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _bottomNavIndex,
      ),
    );
  }
}
