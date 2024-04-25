import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nusatech_test_apps/core/model/trending_model.dart';
import 'package:nusatech_test_apps/core/model/wishlist_model.dart';
import 'package:nusatech_test_apps/core/style/color.dart';
import 'package:nusatech_test_apps/core/style/image_constants.dart';

final List<TrendingModel> trendingList = [
  TrendingModel(
    icon: ImageConstants.instance.iconBtc,
    name: "BTC",
    desc: "BTC/USDT",
    currency: "\$3,283.26",
    loss: "- 0.05%",
    isLoss: false,
    chart: ImageConstants.instance.lineChart,
  ),
  TrendingModel(
    icon: ImageConstants.instance.iconBtc,
    name: "BTC",
    desc: "BTC/USDT",
    currency: "\$3,283.26",
    loss: "- 0.05%",
    isLoss: true,
    chart: ImageConstants.instance.lineChart,
  ),
  TrendingModel(
    icon: ImageConstants.instance.iconPolygon,
    name: "BTC",
    desc: "BTC/USDT",
    currency: "\$88.91",
    loss: "+ 1.12%",
    isLoss: false,
    chart: ImageConstants.instance.lineChart,
  )
];

final List<WishlistModel> wishlistList = [
  WishlistModel(
    icon: ImageConstants.instance.iconUSDT,
    name: "USDT",
    desc: "USDT/BNB",
    chart: ImageConstants.instance.iconChart1,
    currency: "\$576.81",
    loss: "+ 0.32%",
    isLoss: false,
    isUp: false,
  ),
  WishlistModel(
    icon: ImageConstants.instance.iconTrx,
    name: "TRX",
    desc: "TRX/USDT",
    chart: ImageConstants.instance.iconChart2,
    currency: "\$343.01",
    loss: "+ 1.07%",
    isLoss: false,
    isUp: false,
  ),
  WishlistModel(
    icon: ImageConstants.instance.iconBtc,
    name: "BTC",
    desc: "BTC/TRX",
    chart: ImageConstants.instance.iconChart3,
    currency: "\$1,422.01",
    loss: "12.06 %",
    isLoss: false,
    isUp: true,
  ),
  WishlistModel(
    icon: ImageConstants.instance.iconBtc,
    name: "BTC",
    desc: "BTC/TRX",
    chart: ImageConstants.instance.iconChart3,
    currency: "\$1,422.01",
    loss: "12.06 %",
    isLoss: false,
    isUp: true,
  ),
  WishlistModel(
    icon: ImageConstants.instance.iconBtc,
    name: "BTC",
    desc: "BTC/TRX",
    chart: ImageConstants.instance.iconChart3,
    currency: "\$1,422.01",
    loss: "12.06 %",
    isLoss: false,
    isUp: true,
  ),
];

final List<BottomNavigationBarItem> bottomNavbarItems = [
  BottomNavigationBarItem(
      icon: SvgPicture.asset(ImageConstants.instance.iconHome), label: "Home"),
  BottomNavigationBarItem(
      icon: SvgPicture.asset(ImageConstants.instance.iconData), label: "Data"),
  BottomNavigationBarItem(
      icon: Container(
        height: 50,
        width: 50,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(1000)),
          gradient: LinearGradient(
            colors: [cColorBlueGradient, cColorBlueLightGradient],
            begin: Alignment.topLeft,
            end: Alignment.bottomLeft,
          ),
        ),
        child: CircleAvatar(
            backgroundColor: Colors.transparent,
            child: SvgPicture.asset(ImageConstants.instance.iconSwap)),
      ),
      label: "Swap"),
  BottomNavigationBarItem(
      icon: SvgPicture.asset(ImageConstants.instance.iconTrending),
      label: "Trending"),
  BottomNavigationBarItem(
      icon: SvgPicture.asset(ImageConstants.instance.iconWallet),
      label: "Wallet"),
];
