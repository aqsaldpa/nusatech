import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nusatech_test_apps/core/style/color.dart';
import 'package:nusatech_test_apps/core/style/image_constants.dart';
import 'package:nusatech_test_apps/core/style/text_theme.dart';

class NewsList extends StatelessWidget {
  const NewsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        itemCount: 5,
        padding: EdgeInsets.zero,
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            color: cColorBackground,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 100,
                    width: 110,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      image: DecorationImage(
                        image:
                            AssetImage(ImageConstants.instance.imgAnnouncement),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const Gap(8),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ShaderMask(
                          blendMode: BlendMode.srcIn,
                          shaderCallback: (bounds) => const LinearGradient(
                            colors: [
                              cColorBlueGradient,
                              cColorBlueLightGradient
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomLeft,
                          ).createShader(
                            Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                          ),
                          child: Text("Nusatech Token",
                              style: TextThemeApps
                                  .textThemeDefault.textTheme.labelMedium!
                                  .copyWith(fontWeight: FontWeight.bold)),
                        ),
                        const Gap(10),
                        Text(
                            "Some traders bought bitcoin calls at strikes \$45,000 and...",
                            style: TextThemeApps
                                .textThemeDefault.textTheme.labelSmall!
                                .copyWith(
                                    fontSize: 12,
                                    color: cColorGrey,
                                    fontWeight: FontWeight.w400)),
                        const Gap(10),
                        Row(
                          children: [
                            ShaderMask(
                              blendMode: BlendMode.srcIn,
                              shaderCallback: (bounds) => const LinearGradient(
                                colors: [
                                  cColorBlueGradient,
                                  cColorBlueLightGradient
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomLeft,
                              ).createShader(
                                Rect.fromLTWH(
                                    0, 0, bounds.width, bounds.height),
                              ),
                              child: Text("Nusatech News",
                                  style: TextThemeApps
                                      .textThemeDefault.textTheme.labelSmall!
                                      .copyWith(
                                          fontSize: 11,
                                          fontWeight: FontWeight.bold)),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              child: Text("-",
                                  style: TextThemeApps
                                      .textThemeDefault.textTheme.labelSmall!
                                      .copyWith(
                                          fontSize: 11,
                                          fontWeight: FontWeight.normal)),
                            ),
                            Expanded(
                              child: Text("19 Jan 2024",
                                  style: TextThemeApps
                                      .textThemeDefault.textTheme.labelSmall!
                                      .copyWith(
                                          fontSize: 10,
                                          fontWeight: FontWeight.normal)),
                            ),
                          ],
                        ),
                      ],
                    ),
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
