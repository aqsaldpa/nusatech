import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nusatech_test_apps/core/style/color.dart';
import 'package:nusatech_test_apps/core/style/image_constants.dart';
import 'package:nusatech_test_apps/core/style/text_theme.dart';

class AnnouncementList extends StatelessWidget {
  const AnnouncementList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 165,
      child: ListView.builder(
        itemCount: 5,
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return SizedBox(
            width: 170,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              color: cColorBackground,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(ImageConstants.instance.bgAnnouncement),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 75,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          image: DecorationImage(
                            image: AssetImage(
                                ImageConstants.instance.imgAnnouncement),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const Gap(20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Menu card image",
                            style: TextThemeApps
                                .textThemeDefault.textTheme.labelSmall!
                                .copyWith(
                                    fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                          Text("Body menu card",
                              style: TextThemeApps
                                  .textThemeDefault.textTheme.labelSmall!
                                  .copyWith(
                                      color: Colors.white70,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w200)),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
