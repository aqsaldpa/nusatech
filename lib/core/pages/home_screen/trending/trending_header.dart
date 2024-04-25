import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:nusatech_test_apps/core/style/color.dart';
import 'package:nusatech_test_apps/core/style/text_theme.dart';
import 'package:nusatech_test_apps/core/utils/list_controlller.dart';

class TrendingHeader extends StatelessWidget {
  const TrendingHeader({
    super.key,
    required int activepage,
  }) : _activepage = activepage;

  final int _activepage;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Trending",
            style: TextThemeApps.textThemeDefault.textTheme.labelMedium!
                .copyWith(fontWeight: FontWeight.w700)),
        DotsIndicator(
          dotsCount: trendingList.length,
          position: _activepage,
          decorator: const DotsDecorator(
            size: Size.square(9.0),
            activeColor: Colors.lightBlue,
            color: cColorBlueDarkGradient,
            activeSize: Size(18.0, 9.0),
          ),
        ),
      ],
    );
  }
}
