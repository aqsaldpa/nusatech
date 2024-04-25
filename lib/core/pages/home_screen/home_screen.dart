import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nusatech_test_apps/core/pages/home_screen/announcement/announcement_header.dart';
import 'package:nusatech_test_apps/core/pages/home_screen/announcement/announcement_list.dart';
import 'package:nusatech_test_apps/core/pages/home_screen/news/news_header.dart';
import 'package:nusatech_test_apps/core/pages/home_screen/news/news_list.dart';
import 'package:nusatech_test_apps/core/pages/home_screen/trending/trending_header.dart';
import 'package:nusatech_test_apps/core/pages/home_screen/trending/trending_list.dart';
import 'package:nusatech_test_apps/core/pages/home_screen/widgets/appbar_home.dart';
import 'package:nusatech_test_apps/core/pages/home_screen/widgets/bottom_navbar_home.dart';
import 'package:nusatech_test_apps/core/pages/home_screen/widgets/card_balance.dart';
import 'package:nusatech_test_apps/core/pages/home_screen/wishlist/wishlist_header.dart';
import 'package:nusatech_test_apps/core/pages/home_screen/wishlist/wishlist_list.dart';
import 'package:nusatech_test_apps/core/style/color.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final int _bottomNavIndex = 0;
  int _activepage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarHome(),
      backgroundColor: cColorBackground,
      body: ListView(
        children: [
          const Gap(20),
          const CardBalanceWidget(),
          const Gap(20),
          Container(
            height: MediaQuery.sizeOf(context).height / 2,
            decoration: const BoxDecoration(
                color: cColorDarkBlue,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(32),
                  topRight: Radius.circular(32),
                )),
            child: ListView(
              padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
              children: [
                TrendingHeader(activepage: _activepage),
                const Gap(10),
                const TrendingList(),
                const Gap(20),
                const AnnouncementHeader(),
                const Gap(10),
                const AnnouncementList(),
                const Gap(10),
                const WishlisHeader(),
                const Gap(10),
                const WishlistListView(),
                const Gap(10),
                const NewsHeader(),
                const Gap(10),
                const NewsList(),
                const Gap(20),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavBarWidget(bottomNavIndex: _bottomNavIndex),
    );
  }
}
