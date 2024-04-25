import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:nusatech_test_apps/core/style/color.dart';
import 'package:nusatech_test_apps/core/style/text_theme.dart';
import 'package:nusatech_test_apps/core/utils/list_controlller.dart';

class TrendingList extends StatelessWidget {
  const TrendingList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        itemCount: trendingList.length,
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            color: cColorBackground,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(
                          width: 40,
                          height: 40,
                          fit: BoxFit.cover,
                          trendingList[index].icon ?? ""),
                      const Gap(10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(trendingList[index].name ?? "",
                              style: TextThemeApps
                                  .textThemeDefault.textTheme.labelMedium!
                                  .copyWith(fontWeight: FontWeight.bold)),
                          Text(trendingList[index].desc ?? "",
                              style: TextThemeApps
                                  .textThemeDefault.textTheme.labelSmall!
                                  .copyWith(
                                      color: Colors.white70,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w200)),
                        ],
                      ),
                    ],
                  ),
                  const Gap(20),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            trendingList[index].currency ?? "",
                            style: TextThemeApps
                                .textThemeDefault.textTheme.labelMedium!
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            trendingList[index].loss ?? "",
                            style: TextThemeApps
                                .textThemeDefault.textTheme.labelSmall!
                                .copyWith(
                                    color: trendingList[index].isLoss!
                                        ? cColorRed
                                        : cColorGreen,
                                    fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      SvgPicture.asset(trendingList[index].chart ?? ""),
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
