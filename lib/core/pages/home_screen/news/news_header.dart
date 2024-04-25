import 'package:flutter/material.dart';
import 'package:nusatech_test_apps/core/style/text_theme.dart';

class NewsHeader extends StatelessWidget {
  const NewsHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("News",
            style: TextThemeApps.textThemeDefault.textTheme.labelLarge!
                .copyWith(fontWeight: FontWeight.bold)),
        Text("See more",
            style: TextThemeApps.textThemeDefault.textTheme.labelSmall!
                .copyWith(
                    fontWeight: FontWeight.normal, color: Colors.white60)),
      ],
    );
  }
}
