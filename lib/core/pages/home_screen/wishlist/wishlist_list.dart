import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:nusatech_test_apps/core/style/color.dart';
import 'package:nusatech_test_apps/core/style/image_constants.dart';
import 'package:nusatech_test_apps/core/style/text_theme.dart';
import 'package:nusatech_test_apps/core/utils/list_controlller.dart';

class WishlistListView extends StatelessWidget {
  const WishlistListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        itemCount: wishlistList.length,
        padding: EdgeInsets.zero,
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(
                        width: 40,
                        height: 40,
                        fit: BoxFit.contain,
                        wishlistList[index].icon ?? ""),
                    const Gap(15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(wishlistList[index].name ?? "",
                            style: TextThemeApps
                                .textThemeDefault.textTheme.labelMedium!
                                .copyWith(fontWeight: FontWeight.bold)),
                        Text(wishlistList[index].desc ?? "",
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
                const Gap(25),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SvgPicture.asset(
                        width: 25,
                        height: 25,
                        fit: BoxFit.cover,
                        wishlistList[index].chart ?? ""),
                    const Gap(20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(wishlistList[index].currency ?? "",
                            style: TextThemeApps
                                .textThemeDefault.textTheme.labelMedium!
                                .copyWith(fontWeight: FontWeight.bold)),
                        Row(
                          children: [
                            Text(
                              wishlistList[index].loss ?? "",
                              style: TextThemeApps
                                  .textThemeDefault.textTheme.labelSmall!
                                  .copyWith(
                                      color: wishlistList[index].isLoss!
                                          ? cColorRed
                                          : cColorGreen,
                                      fontWeight: FontWeight.w700),
                            ),
                            const Gap(3),
                            Visibility(
                              visible: wishlistList[index].isUp ?? false,
                              child: SvgPicture.asset(
                                  width: 18,
                                  height: 18,
                                  fit: BoxFit.cover,
                                  ImageConstants.instance.iconUP),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
